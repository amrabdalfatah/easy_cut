import 'package:easycut_business/core/services/services.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  String? id;
  String? name;

  @override
  initialData() {
    id = myServices.sharedPreferences.getString('id');
    name = myServices.sharedPreferences.getString('name');
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
