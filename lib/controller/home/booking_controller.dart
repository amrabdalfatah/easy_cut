import 'package:easycut_business/core/class/status_request.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/functions/handling_data_controller.dart';
import 'package:easycut_business/core/services/services.dart';
import 'package:easycut_business/data/data_source/remote/home/bookings_data.dart';
import 'package:easycut_business/data/model/booking_model.dart';
import 'package:get/get.dart';

abstract class BookingController extends GetxController {
  getBookingsData();
  goToPendingBookingDetail(BookingModel bookingModel);
}

class BookingControllerImp extends BookingController {
  late String salonId;
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.success;
  BookingsData bookingsData = BookingsData(Get.find());
  List<BookingModel> allBookings = [];
  List<BookingModel> bookingPending = [];
  List<BookingModel> bookingToday = [];
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
        getBookingToday(allBookings);
        getBookingPending(allBookings);
      } else {
        statusRequest = StatusRequest.none;
      }
    }
    update();
  }

  getBookingToday(List<BookingModel> allBookings) {
    var dateTime = DateTime.now().toString().substring(0, 10);
    allBookings.forEach((element) {
      if (element.day == dateTime && element.approve == "1") {
        bookingToday.add(element);
      }
    });
  }

  getBookingPending(List<BookingModel> allBookings) {
    allBookings.forEach((element) {
      if (element.approve == "0") {
        bookingPending.add(element);
      }
    });
  }

  @override
  void onInit() {
    salonId = myServices.sharedPreferences.getString('id')!;
    getBookingsData();
    super.onInit();
  }

  @override
  goToPendingBookingDetail(BookingModel bookingModel) {
    Get.offNamed(AppRoute.bookingDetail, arguments: {
      "booking": bookingModel,
    });
  }
}
