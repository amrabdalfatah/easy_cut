import 'package:easycut_business/controller/home/appointment_controller.dart';
import 'package:easycut_business/core/constant/color.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/view/widget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAppointment extends StatelessWidget {
  const AddAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AppointmentsControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: BigText(
          text: "Add Appointments",
        ),
        leading: IconButton(
          onPressed: () {
            Get.offNamed(AppRoute.appointment);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: GetBuilder<AppointmentsControllerImp>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.all(Dimensions.height15),
            child: Column(
              children: [
                Container(
                  height: Dimensions.height60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Satur"),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer_outlined,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 AM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 AM",
                            onTap: () {},
                            child: Text(
                              '9:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 AM",
                            onTap: () {},
                            child: Text(
                              '10:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 AM",
                            onTap: () {},
                            child: Text(
                              '11:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 AM",
                            onTap: () {},
                            child: Text(
                              '12:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 PM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 PM",
                            onTap: () {},
                            child: Text(
                              '9:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 PM",
                            onTap: () {},
                            child: Text(
                              '10:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 PM",
                            onTap: () {},
                            child: Text(
                              '11:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 PM",
                            onTap: () {},
                            child: Text(
                              '12:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                Container(
                  height: Dimensions.height60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Sun"),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer_outlined,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 AM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 AM",
                            onTap: () {},
                            child: Text(
                              '9:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 AM",
                            onTap: () {},
                            child: Text(
                              '10:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 AM",
                            onTap: () {},
                            child: Text(
                              '11:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 AM",
                            onTap: () {},
                            child: Text(
                              '12:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 PM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 PM",
                            onTap: () {},
                            child: Text(
                              '9:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 PM",
                            onTap: () {},
                            child: Text(
                              '10:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 PM",
                            onTap: () {},
                            child: Text(
                              '11:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 PM",
                            onTap: () {},
                            child: Text(
                              '12:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                Container(
                  height: Dimensions.height60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Mon"),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer_outlined,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 AM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 AM",
                            onTap: () {},
                            child: Text(
                              '9:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 AM",
                            onTap: () {},
                            child: Text(
                              '10:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 AM",
                            onTap: () {},
                            child: Text(
                              '11:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 AM",
                            onTap: () {},
                            child: Text(
                              '12:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 PM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 PM",
                            onTap: () {},
                            child: Text(
                              '9:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 PM",
                            onTap: () {},
                            child: Text(
                              '10:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 PM",
                            onTap: () {},
                            child: Text(
                              '11:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 PM",
                            onTap: () {},
                            child: Text(
                              '12:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                Container(
                  height: Dimensions.height60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Tues"),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer_outlined,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 AM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 AM",
                            onTap: () {},
                            child: Text(
                              '9:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 AM",
                            onTap: () {},
                            child: Text(
                              '10:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 AM",
                            onTap: () {},
                            child: Text(
                              '11:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 AM",
                            onTap: () {},
                            child: Text(
                              '12:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 PM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 PM",
                            onTap: () {},
                            child: Text(
                              '9:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 PM",
                            onTap: () {},
                            child: Text(
                              '10:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 PM",
                            onTap: () {},
                            child: Text(
                              '11:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 PM",
                            onTap: () {},
                            child: Text(
                              '12:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                Container(
                  height: Dimensions.height60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Wednes"),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer_outlined,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 AM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 AM",
                            onTap: () {},
                            child: Text(
                              '9:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 AM",
                            onTap: () {},
                            child: Text(
                              '10:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 AM",
                            onTap: () {},
                            child: Text(
                              '11:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 AM",
                            onTap: () {},
                            child: Text(
                              '12:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 PM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 PM",
                            onTap: () {},
                            child: Text(
                              '9:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 PM",
                            onTap: () {},
                            child: Text(
                              '10:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 PM",
                            onTap: () {},
                            child: Text(
                              '11:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 PM",
                            onTap: () {},
                            child: Text(
                              '12:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                Container(
                  height: Dimensions.height60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Thurs"),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer_outlined,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 AM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 AM",
                            onTap: () {},
                            child: Text(
                              '9:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 AM",
                            onTap: () {},
                            child: Text(
                              '10:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 AM",
                            onTap: () {},
                            child: Text(
                              '11:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 AM",
                            onTap: () {},
                            child: Text(
                              '12:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 PM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 PM",
                            onTap: () {},
                            child: Text(
                              '9:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 PM",
                            onTap: () {},
                            child: Text(
                              '10:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 PM",
                            onTap: () {},
                            child: Text(
                              '11:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 PM",
                            onTap: () {},
                            child: Text(
                              '12:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                Container(
                  height: Dimensions.height60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: AppColor.grey,
                        width: 1,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Fri"),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer_outlined,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 AM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 AM",
                            onTap: () {},
                            child: Text(
                              '9:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 AM",
                            onTap: () {},
                            child: Text(
                              '10:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 AM",
                            onTap: () {},
                            child: Text(
                              '11:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 AM",
                            onTap: () {},
                            child: Text(
                              '12:00 AM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Icon(
                          Icons.timer,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primaryColor,
                        ),
                        underline: const SizedBox(),
                        // value: con.gender,
                        value: "9:00 PM",
                        items: [
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "9:00 PM",
                            onTap: () {},
                            child: Text(
                              '9:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.gender,
                            value: "10:00 PM",
                            onTap: () {},
                            child: Text(
                              '10:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.male,
                            value: "11:00 PM",
                            onTap: () {},
                            child: Text(
                              '11:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            // value: Gender.female,
                            value: "12:00 PM",
                            onTap: () {},
                            child: Text(
                              '12:00 PM',
                              style: const TextStyle(
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          // con.changeGender(value!);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                SizedBox(
                  width: double.infinity,
                  child: CustomButtonAuth(
                    onPressed: () {},
                    text: "Add",
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
