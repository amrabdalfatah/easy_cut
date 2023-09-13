import 'package:easycut_business/controller/home/booking_controller.dart';
import 'package:easycut_business/core/class/handling_data_view.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:easycut_business/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingToday extends StatelessWidget {
  const BookingToday({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BookingControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: BigText(
          text: "Booking Today",
          color: Colors.black,
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
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: GetBuilder<BookingControllerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
              itemCount: controller.bookingToday.length,
              itemBuilder: (context, index) {
                return Container(
                  height: Dimensions.height300,
                  width: double.infinity,
                  margin: EdgeInsets.all(Dimensions.height10),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.height10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: Dimensions.height45,
                                child: ClipRRect(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  borderRadius: BorderRadius.circular(
                                    Dimensions.height45,
                                  ),
                                  child: Image.network(
                                    "${AppLink.imageUsers}${controller.bookingToday[index].userImage}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.width10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BigText(
                                      text: controller.bookingToday[index].day!,
                                      size: Dimensions.font16,
                                    ),
                                    BigText(
                                      text: controller
                                          .bookingToday[index].startTime!,
                                      size: Dimensions.font16,
                                      color: Colors.red,
                                    ),
                                    BigText(
                                      text: controller
                                          .bookingToday[index].userName!,
                                      size: Dimensions.font20,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SmallText(text: "Price :"),
                                      SizedBox(width: Dimensions.width5),
                                      BigText(
                                        text:
                                            "${controller.bookingToday[index].total!} \$",
                                        size: Dimensions.font16,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: Dimensions.height15,
                                        width: Dimensions.height15,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: controller.bookingToday[index]
                                                      .approve ==
                                                  "0"
                                              ? Colors.orange
                                              : controller.bookingToday[index]
                                                          .approve ==
                                                      "1"
                                                  ? Colors.green
                                                  : Colors.red,
                                        ),
                                      ),
                                      SizedBox(width: Dimensions.width5),
                                      BigText(
                                        text: controller.bookingToday[index]
                                                    .approve ==
                                                "0"
                                            ? "waiting"
                                            : controller.bookingToday[index]
                                                        .approve ==
                                                    "1"
                                                ? "accepted"
                                                : "refused",
                                        size: Dimensions.font16,
                                        color: controller.bookingToday[index]
                                                    .approve ==
                                                "0"
                                            ? Colors.orange
                                            : controller.bookingToday[index]
                                                        .approve ==
                                                    "1"
                                                ? Colors.green
                                                : Colors.red,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
