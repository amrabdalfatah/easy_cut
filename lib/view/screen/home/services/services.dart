import 'package:easycut_business/controller/home/services_controller.dart';
import 'package:easycut_business/core/class/handling_data_view.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/image_asset.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:easycut_business/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ServicesControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const BigText(
          text: "Services",
        ),
        leading: IconButton(
          onPressed: () {
            Get.offNamed(AppRoute.home);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.offNamed(AppRoute.addServices);
            },
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: GetBuilder<ServicesControllerImp>(builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: ListView.builder(
            itemCount: controller.services.length,
            itemBuilder: (context, index) {
              return Container(
                height: Dimensions.height100,
                width: double.infinity,
                margin: EdgeInsets.all(Dimensions.height10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.height10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: Dimensions.height45,
                          child: ClipRRect(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            borderRadius: BorderRadius.circular(
                              Dimensions.height45,
                            ),
                            child: Image.network(
                              "${AppLink.imageServices}${controller.services[index].image}",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                text: controller.services[index].name!,
                                size: Dimensions.font20,
                              ),
                              BigText(
                                text:
                                    "Price: ${controller.services[index].price}",
                                size: Dimensions.font20,
                                color: Colors.red,
                              ),
                              SmallText(
                                text:
                                    "Time: ${controller.services[index].time} min",
                              ),
                            ],
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     IconButton(
                        //       onPressed: () {},
                        //       icon: Icon(
                        //         Icons.highlight_remove_outlined,
                        //         color: Colors.red,
                        //       ),
                        //     ),
                        //     IconButton(
                        //       onPressed: () {},
                        //       icon: Icon(
                        //         Icons.check_circle_outline,
                        //         color: Colors.green,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
