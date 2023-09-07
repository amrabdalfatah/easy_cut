import 'dart:io';

import 'package:easycut_business/core/class/status_request.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/functions/handling_data_controller.dart';
import 'package:easycut_business/core/services/services.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:easycut_business/data/data_source/remote/home/services_data.dart';
import 'package:easycut_business/data/model/services_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ServicesController extends GetxController {
  getServicesData();
  addServicesData();
}

class ServicesControllerImp extends ServicesController {
  late String salonId;
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.success;
  ServicesData servicesData = ServicesData(Get.find());
  List<ServicesModel> services = [];

  @override
  getServicesData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await servicesData.getData(
      salonId,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        List data = response['data'];
        data.forEach((element) {
          var item = element as Map<String, dynamic>;
          services.add(ServicesModel.fromJson(item));
        });
      } else {
        statusRequest = StatusRequest.none;
      }
    }
    update();
  }

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController serviceName;
  late TextEditingController serviceTime;
  late TextEditingController servicePrice;
  File? myFile;

  void addFilePath(String path) {
    myFile = File(path);
    update();
  }

  @override
  addServicesData() async {
    if (myFile == null) {
      return Get.defaultDialog(
        title: "Warning",
        content: const SmallText(
          text: "You must upload image for your service",
        ),
      );
    }
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await servicesData.postData(
        salonId,
        serviceName.text,
        servicePrice.text,
        serviceTime.text,
        myFile!,
      );
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          Get.snackbar(
            'Success',
            'Adding Services',
            snackPosition: SnackPosition.TOP,
            colorText: Colors.green,
          );
          Get.offNamed(AppRoute.services);
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
    serviceName = TextEditingController();
    servicePrice = TextEditingController();
    serviceTime = TextEditingController();
    getServicesData();
    super.onInit();
  }
}
