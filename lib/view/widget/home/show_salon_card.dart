import 'package:easycut_business/core/constant/color.dart';
import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/shared/widgets/big_text.dart';
import 'package:easycut_business/core/shared/widgets/small_text.dart';
import 'package:easycut_business/view/widget/home/icon_and_text.dart';
import 'package:flutter/material.dart';

class ShowSalonCard extends StatelessWidget {
  final String text;
  final String phone;
  final String rate;
  const ShowSalonCard({
    super.key,
    required this.text,
    required this.phone,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: index < num.parse(rate).floor()
                      ? AppColor.primaryColor
                      : AppColor.grey,
                  size: Dimensions.height15,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallText(text: rate),
            // SmallText(text: '1287'),
            // SmallText(text: 'comments'),
          ],
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            IconAndTextWidget(
              icon: Icons.phone,
              text: phone,
              iconColor: AppColor.primaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
