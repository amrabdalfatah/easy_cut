import 'package:easycut_business/core/class/status_request.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/functions/handling_data_controller.dart';
import 'package:easycut_business/core/services/services.dart';
import 'package:easycut_business/data/data_source/remote/home/bookings_data.dart';
import 'package:easycut_business/data/model/appointment_model.dart';
import 'package:easycut_business/data/model/booking_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BookingController extends GetxController {
  getBookingsData();
  // addAppointmentsData();
}

class BookingControllerImp extends BookingController {
  late String salonId;
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.success;
  BookingsData bookingsData = BookingsData(Get.find());
  List<BookingModel> allBookings = [];
  // AppointmentModel appointment = AppointmentModel();

  @override
  getBookingsData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await bookingsData.viewAll(
      salonId,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        List data = response['data'] as List;
        data.forEach((element) {
          var item = element as Map<String, dynamic>;
          allBookings.add(BookingModel.fromJson(item));
        });
      } else {
        statusRequest = StatusRequest.none;
      }
    }
    update();
  }

  // @override
  // addAppointmentsData() async {
  //   statusRequest = StatusRequest.loading;
  //   update();
  //   var response = await appointmentData.postData(
  //     salonId,
  //     "$startTimeSat - $endTimeSat",
  //     "$startTimeSun - $endTimeSun",
  //     "$startTimeMon - $endTimeMon",
  //     "$startTimeTue - $endTimeThu",
  //     "$startTimeWed - $endTimeWed",
  //     "$startTimeThu - $endTimeThu",
  //     "$startTimeFri - $endTimeFri",
  //   );
  //   statusRequest = handlingData(response);
  //   if (statusRequest == StatusRequest.success) {
  //     if (response['status'] == 'success') {
  //       Get.snackbar(
  //         'Success',
  //         'Adding Appointments',
  //         snackPosition: SnackPosition.TOP,
  //         colorText: Colors.green,
  //       );
  //       Get.offNamed(AppRoute.appointment);
  //     } else {
  //       statusRequest = StatusRequest.none;
  //     }
  //   }
  //   update();
  // }

  @override
  void onInit() {
    salonId = myServices.sharedPreferences.getString('id')!;
    getBookingsData();
    super.onInit();
  }
}
