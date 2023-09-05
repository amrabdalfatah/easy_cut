import 'package:easycut_business/controller/home/profile_controller.dart';
import 'package:easycut_business/core/class/handling_data_view.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/view/widget/home/app_icon.dart';
import 'package:easycut_business/view/widget/main/stack_image_detail.dart';
import 'package:easycut_business/view/widget/main/stack_salon_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ProfileControllerImp());
    return Scaffold(
      body: GetBuilder<ProfileControllerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      StackImageDetail(salonImage: "${controller.salon.image}"),
                      Positioned(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.offNamed(AppRoute.home);
                              },
                              child: const AppIcon(icon: Icons.arrow_back_ios),
                            ),
                            // GestureDetector(
                            //   onTap: () {
                            //
                            //   },
                            //   child: const AppIcon(icon: Icons.edit),
                            // ),
                          ],
                        ),
                      ),
                      StackSalonDetails(
                        salon: controller.salon,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
