import 'package:easycut_business/core/class/crud.dart';
import 'package:easycut_business/linkapi.dart';

class ProfileData {
  Crud crud;

  ProfileData(this.crud);

  postData(String id) async {
    var response = await crud.postData(AppLink.userInfo, {
      "id": id,
    });
    return response.fold((l) => l, (r) => r);
  }
}
