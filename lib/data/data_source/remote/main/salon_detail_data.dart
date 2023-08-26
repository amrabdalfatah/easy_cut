import 'package:easycut_business/core/class/crud.dart';
import 'package:easycut_business/linkapi.dart';

class SalonDetailData {
  Crud crud;

  SalonDetailData(this.crud);

  postData(String id) async {
    var response = await crud.postData(AppLink.salonDetail, {
      "id": id,
    });
    return response.fold((l) => l, (r) => r);
  }
}
