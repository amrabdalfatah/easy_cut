import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AboutSalon extends StatelessWidget {
  final String email;
  final String country;
  final String city;
  final String address;
  final String subscription;
  final String reminder;
  const AboutSalon({
    super.key,
    required this.email,
    required this.country,
    required this.city,
    required this.address,
    required this.subscription,
    required this.reminder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Dimensions.height10),
        const BigText(text: "Email"),
        SizedBox(height: Dimensions.height10),
        SmallText(text: email),
        SizedBox(height: Dimensions.height10),
        const BigText(text: "Country"),
        SizedBox(height: Dimensions.height10),
        SmallText(text: country),
        SizedBox(height: Dimensions.height10),
        const BigText(text: "Address"),
        SizedBox(height: Dimensions.height10),
        SmallText(text: "$city || $address"),
        SizedBox(height: Dimensions.height10),
        const BigText(text: "Subscription"),
        SizedBox(height: Dimensions.height10),
        SmallText(text: "$subscription Months"),
        SizedBox(height: Dimensions.height10),
        const BigText(text: "Reminder"),
        SizedBox(height: Dimensions.height10),
        SmallText(text: "$reminder Days"),
        SizedBox(height: Dimensions.height10),
      ],
    );
  }
}
