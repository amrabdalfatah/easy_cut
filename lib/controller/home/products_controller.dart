import 'dart:io';

import 'package:easycut_business/core/class/status_request.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/functions/handling_data_controller.dart';
import 'package:easycut_business/core/services/services.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:easycut_business/data/data_source/remote/home/products_data.dart';
import 'package:easycut_business/data/model/products_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProductsController extends GetxController {
  getProductsData();
  addProductsData();
}

class ProductsControllerImp extends ProductsController {
  late String salonId;
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.success;
  ProductsData productsData = ProductsData(Get.find());
  List<ProductModel> products = [];

  @override
  getProductsData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await productsData.getData(
      salonId,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        List data = response['data'];
        data.forEach((element) {
          var item = element as Map<String, dynamic>;
          products.add(ProductModel.fromJson(item));
        });
      } else {
        statusRequest = StatusRequest.none;
      }
    }
    update();
  }

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController productName;
  late TextEditingController productNumber;
  late TextEditingController productPrice;
  File? myFile;

  void addFilePath(String path) {
    myFile = File(path);
    update();
  }

  @override
  addProductsData() async {
    if (myFile == null) {
      return Get.defaultDialog(
        title: "Warning",
        content: const SmallText(
          text: "You must upload image for your Product",
        ),
      );
    }
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await productsData.postData(
        salonId,
        productName.text,
        productPrice.text,
        productNumber.text,
        myFile!,
      );
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          Get.snackbar(
            'Success',
            'Adding Product',
            snackPosition: SnackPosition.TOP,
            colorText: Colors.green,
          );
          Get.offNamed(AppRoute.products);
        } else {
          statusRequest = StatusRequest.none;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    salonId = myServices.sharedPreferences.getString('id')!;
    productName = TextEditingController();
    productPrice = TextEditingController();
    productNumber = TextEditingController();
    getProductsData();
    super.onInit();
  }
}
