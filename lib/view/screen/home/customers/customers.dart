import 'package:easycut_business/controller/home/customers_controller.dart';
import 'package:easycut_business/core/class/handling_data_view.dart';
import 'package:easycut_business/core/constant/color.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:easycut_business/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customers extends StatelessWidget {
  const Customers({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CustomersControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: BigText(
          text: "Customers",
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
      ),
      body: GetBuilder<CustomersControllerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.separated(
              itemBuilder: (context, index) {
                return SizedBox(
                  height: Dimensions.height300,
                  width: double.infinity,
                  child: Card(
                    margin: EdgeInsets.all(Dimensions.height15),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.height10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Dimensions.height100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                Dimensions.height50,
                              ),
                              child: Image.network(
                                "${AppLink.imageUsers}${controller.customers[index].image}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: Dimensions.height10),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SmallText(text: "Name:"),
                                    SizedBox(
                                      width: Dimensions.width5,
                                    ),
                                    BigText(
                                      text: controller.customers[index].name!,
                                      color: AppColor.primaryColor,
                                    ),
                                  ],
                                ),
                                SizedBox(height: Dimensions.height10),
                                Row(
                                  children: [
                                    SmallText(text: "Email:"),
                                    SizedBox(
                                      width: Dimensions.width5,
                                    ),
                                    BigText(
                                      text: controller.customers[index].email!,
                                      color: AppColor.primaryColor,
                                    ),
                                  ],
                                ),
                                SizedBox(height: Dimensions.height10),
                                Row(
                                  children: [
                                    SmallText(text: "Phone:"),
                                    SizedBox(
                                      width: Dimensions.width5,
                                    ),
                                    BigText(
                                      text: controller.customers[index].phone!,
                                      color: AppColor.primaryColor,
                                    ),
                                  ],
                                ),
                                SizedBox(height: Dimensions.height10),
                                Row(
                                  children: [
                                    SmallText(text: "Address:"),
                                    SizedBox(
                                      width: Dimensions.width5,
                                    ),
                                    BigText(
                                      text:
                                          "${controller.customers[index].country!} - ${controller.customers[index].city!} - ${controller.customers[index].address!}",
                                      color: AppColor.primaryColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: Dimensions.height10,
                );
              },
              itemCount: controller.customers.length,
            ),
          );
        },
      ),
    );
  }
}
