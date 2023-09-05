import 'package:easycut_business/core/constant/color.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/data/model/salon_model.dart';
import 'package:easycut_business/view/widget/home/show_salon_card.dart';
import 'package:easycut_business/view/widget/main/about_salon.dart';
import 'package:easycut_business/view/widget/main/show_comments_salon.dart';
import 'package:flutter/material.dart';

class StackSalonDetails extends StatelessWidget {
  final SalonModel salon;
  const StackSalonDetails({
    super.key,
    required this.salon,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimensions.height350 - Dimensions.height70,
      left: 0,
      right: 0,
      bottom: 0,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                padding: EdgeInsets.only(
                  right: Dimensions.width20,
                  left: Dimensions.width20,
                  top: Dimensions.height20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius30),
                    topLeft: Radius.circular(Dimensions.radius30),
                  ),
                ),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShowSalonCard(
                        text: "${salon.name}",
                        phone: "${salon.phone}",
                        rate: "${salon.rate}",
                      ),
                      SizedBox(height: Dimensions.height10),
                      TabBar(
                        labelColor: AppColor.primaryColor,
                        unselectedLabelColor: Colors.grey[700],
                        indicatorColor: AppColor.primaryColor,
                        tabs: [
                          Tab(
                            text: "About",
                          ),
                          Tab(
                            text: "Comments",
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            AboutSalon(
                              address: salon.address!,
                              city: salon.city!,
                              country: salon.country!,
                              email: salon.email!,
                              chairs: salon.chairs!,
                              subscription: salon.subscription!,
                              created: salon.createdAt!.substring(0, 10),
                            ),
                            ShowCommentsSalon(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
