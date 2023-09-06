import 'package:easycut_business/core/class/status_request.dart';
import 'package:easycut_business/core/functions/handling_data_controller.dart';
import 'package:easycut_business/core/services/services.dart';
import 'package:easycut_business/data/data_source/remote/home/appointment_data.dart';
import 'package:easycut_business/data/model/appointment_model.dart';
import 'package:get/get.dart';

abstract class AppointmentsController extends GetxController {
  getAppointmentsData();
  addAppointmentsData();
}

class AppointmentsControllerImp extends AppointmentsController {
  late String salonId;
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.success;
  AppointmentData appointmentData = AppointmentData(Get.find());
  AppointmentModel appointment = AppointmentModel();

  @override
  getAppointmentsData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await appointmentData.getData(
      salonId,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        var data = response['data'] as Map<String, dynamic>;
        print(data);
      } else {
        statusRequest = StatusRequest.none;
      }
    }
    update();
  }

  @override
  addAppointmentsData() {}

  @override
  void onInit() {
    salonId = myServices.sharedPreferences.getString('id')!;
    getAppointmentsData();
    super.onInit();
  }
}
