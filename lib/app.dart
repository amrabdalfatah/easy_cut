import 'package:easycut_business/core/localization/change_local.dart';
import 'package:easycut_business/core/localization/translation.dart';
import 'package:easycut_business/helper/binding.dart';
import 'package:easycut_business/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EasyCutBusiness extends StatelessWidget {
  const EasyCutBusiness({super.key});
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      title: "EasyCut Business",
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      theme: controller.appTheme,
      initialBinding: MyBinding(),
      // routes: routes,
      getPages: routes,
    );
  }
}
