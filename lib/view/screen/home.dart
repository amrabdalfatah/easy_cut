import 'package:easycut_business/controller/home/home_controller.dart';
import 'package:easycut_business/core/constant/color.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/image_asset.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:easycut_business/data/data_source/static/static.dart';
import 'package:easycut_business/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Dimensions.height350,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: constraints.maxHeight * 0.85,
                          width: constraints.maxWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(Dimensions.radius20),
                              bottomRight: Radius.circular(Dimensions.radius20),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(Dimensions.radius20),
                              bottomRight: Radius.circular(Dimensions.radius20),
                            ),
                            child: controller.image!.isEmpty
                                ? Image.asset(
                                    AppImageAsset.salonOne,
                                    fit: BoxFit.cover,
                                  )
                                : Image.network(
                                    "${AppLink.imageSalons}${controller.image!}",
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: Dimensions.width45,
                        left: Dimensions.width45,
                        child: Container(
                          height: constraints.maxHeight * 0.25,
                          width: constraints.maxWidth,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(
                              Dimensions.radius20,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SmallText(
                                text: "Hello ",
                                size: Dimensions.font26,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: Dimensions.width5,
                              ),
                              BigText(
                                text: controller.name!,
                                size: Dimensions.font32,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: Dimensions.height50,
                        right: Dimensions.width15,
                        child: Container(
                          height: constraints.maxHeight * 0.15,
                          width: constraints.maxWidth * 0.12,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              Dimensions.radius20,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              controller.logout();
                            },
                            icon: const Icon(
                              Icons.logout,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width15,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: Dimensions.width10,
                    mainAxisSpacing: Dimensions.width10,
                  ),
                  itemCount: mainHome.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: mainHome[index].taped,
                      child: Card(
                        color: mainHome[index].color,
                        elevation: Dimensions.width10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              mainHome[index].icon,
                              color: Colors.white,
                              size: Dimensions.width45,
                            ),
                            BigText(
                              text: mainHome[index].title,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
