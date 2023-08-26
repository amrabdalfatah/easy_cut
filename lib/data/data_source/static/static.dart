import 'package:easycut_business/core/constant/color.dart';
import 'package:easycut_business/core/constant/image_asset.dart';
import 'package:easycut_business/data/model/home_text.dart';
import 'package:easycut_business/data/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: "5".tr,
    body: "6".tr,
    image: AppImageAsset.salonOne,
  ),
  OnBoardingModel(
    title: "7".tr,
    body: "8".tr,
    image: AppImageAsset.salonTwo,
  ),
  OnBoardingModel(
    title: "9".tr,
    body: "10".tr,
    image: AppImageAsset.salonThree,
  ),
  OnBoardingModel(
    title: "11".tr,
    body: "12".tr,
    image: AppImageAsset.salonFour,
  ),
];

List<HomeText> mainHome = [
  HomeText(
    title: "Booking Today",
    icon: Icons.calendar_month,
    color: Colors.red,
    taped: () {},
  ),
  HomeText(
    title: "Booking Pending",
    icon: Icons.edit_calendar,
    color: AppColor.primaryColor,
    taped: () {},
  ),
  HomeText(
    title: "Customers",
    icon: Icons.person,
    color: AppColor.primaryColor,
    taped: () {},
  ),
  HomeText(
    title: "Services",
    icon: Icons.design_services,
    color: Colors.red,
    taped: () {},
  ),
  HomeText(
    title: "Products",
    icon: Icons.shopping_basket,
    color: Colors.red,
    taped: () {},
  ),
  HomeText(
    title: "Profile",
    icon: Icons.settings,
    color: AppColor.primaryColor,
    taped: () {},
  ),
];
