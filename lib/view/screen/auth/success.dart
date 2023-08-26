import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/image_asset.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/view/widget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: Dimensions.height200,
                child: Image.asset(
                  AppImageAsset.logo,
                ),
              ),
              SizedBox(height: Dimensions.height30),
              BigText(
                text: "31".tr,
                color: Colors.black,
                size: Dimensions.font32,
              ),
              SizedBox(height: Dimensions.height30),
              CustomButtonAuth(
                onPressed: () {
                  Get.offAllNamed(AppRoute.login);
                },
                text: "34".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
