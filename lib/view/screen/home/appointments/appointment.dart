import 'package:easycut_business/controller/home/appointment_controller.dart';
import 'package:easycut_business/core/class/handling_data_view.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/view/widget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AppointmentsControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: BigText(
          text: "Appointments",
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
      body: GetBuilder<AppointmentsControllerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: controller.appointment.saturday == null
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Add Appointments"),
                        Padding(
                          padding: EdgeInsets.all(
                            Dimensions.height15,
                          ),
                          child: CustomButtonAuth(
                            onPressed: () {
                              Get.offNamed(AppRoute.addAppointment);
                            },
                            text: "Add",
                          ),
                        ),
                      ],
                    ),
                  )
                : Center(
                    child: Text("aDDed"),
                  ),
          );
        },
      ),
    );
  }
}
