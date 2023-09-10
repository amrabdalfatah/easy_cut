import 'package:easycut_business/core/class/status_request.dart';
import 'package:easycut_business/core/functions/handling_data_controller.dart';
import 'package:easycut_business/core/services/services.dart';
import 'package:easycut_business/data/data_source/remote/home/customers_data.dart';
import 'package:easycut_business/data/model/customer_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CustomersController extends GetxController {
  getCustomersData();
}

class CustomersControllerImp extends CustomersController {
  late String salonId;
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.success;
  CustomersData customersData = CustomersData(Get.find());
  List<CustomerModel> customers = [];

  @override
  getCustomersData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await customersData.getData(
      salonId,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        List data = response['data'] as List;
        data.forEach((element) {
          var item = element as Map<String, dynamic>;
          customers.add(CustomerModel.fromJson(item));
        });
      } else {
        Get.snackbar(
          'Warning',
          'There is no data',
          snackPosition: SnackPosition.TOP,
          colorText: Colors.red,
        );
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    salonId = myServices.sharedPreferences.getString('id')!;
    getCustomersData();
    super.onInit();
  }
}
