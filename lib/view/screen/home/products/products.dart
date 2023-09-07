import 'package:easycut_business/controller/home/products_controller.dart';
import 'package:easycut_business/core/class/handling_data_view.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:easycut_business/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ProductsControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: BigText(
          text: "Products",
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
              Get.offNamed(AppRoute.addProducts);
            },
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: GetBuilder<ProductsControllerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
              itemCount: controller.products.length,
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
                                "${AppLink.imageProducts}${controller.products[index].image}",
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
                                  text: controller.products[index].name!,
                                  size: Dimensions.font20,
                                ),
                                BigText(
                                  text:
                                      "Number: ${controller.products[index].number}",
                                  size: Dimensions.font20,
                                  color: Colors.red,
                                ),
                                SmallText(
                                  text:
                                      "Price: ${controller.products[index].price}",
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
        },
      ),
    );
  }
}
