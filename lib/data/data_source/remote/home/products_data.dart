import 'dart:io';

import 'package:easycut_business/core/class/crud.dart';
import 'package:easycut_business/linkapi.dart';

class ProductsData {
  Crud crud;

  ProductsData(this.crud);

  getData(String salonId) async {
    var response = await crud.postData(AppLink.productsView, {
      "salonid": salonId,
    });
    return response.fold((l) => l, (r) => r);
  }

  postData(
    String salonId,
    String name,
    String price,
    String number,
    File image,
  ) async {
    var response = await crud.postDataWithFile(
      AppLink.productsAdd,
      {
        "salonid": salonId,
        "name": name,
        "price": price,
        "number": number,
      },
      image,
    );
    return response.fold((l) => l, (r) => r);
  }
}
