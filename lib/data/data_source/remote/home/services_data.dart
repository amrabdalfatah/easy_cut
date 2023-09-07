import 'dart:io';

import 'package:easycut_business/core/class/crud.dart';
import 'package:easycut_business/linkapi.dart';

class ServicesData {
  Crud crud;

  ServicesData(this.crud);

  getData(String salonId) async {
    var response = await crud.postData(AppLink.servicesView, {
      "salonid": salonId,
    });
    return response.fold((l) => l, (r) => r);
  }

  postData(
    String salonId,
    String name,
    String price,
    String time,
    File image,
  ) async {
    var response = await crud.postDataWithFile(
      AppLink.servicesAdd,
      {
        "salonid": salonId,
        "name": name,
        "price": price,
        "time": time,
      },
      image,
    );
    return response.fold((l) => l, (r) => r);
  }
}
