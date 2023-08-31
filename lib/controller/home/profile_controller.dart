import 'package:easycut_business/core/class/status_request.dart';
import 'package:easycut_business/core/functions/handling_data_controller.dart';
import 'package:easycut_business/core/services/services.dart';
import 'package:easycut_business/data/data_source/remote/home/profile_data.dart';
import 'package:easycut_business/data/model/salon_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProfileController extends GetxController {
  getSalonData();
  calculateReminder();
  updateSalon();
}

class ProfileControllerImp extends ProfileController {
  late String salonId;
  String reminder = "0";
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.success;
  ProfileData salonDetail = ProfileData(Get.find());
  SalonModel salon = SalonModel();

  @override
  getSalonData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await salonDetail.postData(
      salonId,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        var data = response['data'] as Map<String, dynamic>;
        salon = SalonModel.fromJson(data);
        calculateReminder();
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
    getSalonData();
    super.onInit();
  }

  @override
  calculateReminder() {
    String created = salon.createdAt!;
    created = created.substring(0, 10);
    int totalDays = int.parse(salon.subscription!) * 30;
    update();
  }

  @override
  updateSalon() {}
}
