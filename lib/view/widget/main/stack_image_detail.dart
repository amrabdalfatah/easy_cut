import 'package:easycut_business/core/constant/dimensions.dart';
import 'package:easycut_business/core/constant/image_asset.dart';
import 'package:easycut_business/linkapi.dart';
import 'package:flutter/material.dart';

class StackImageDetail extends StatelessWidget {
  final String salonImage;
  const StackImageDetail({super.key, required this.salonImage});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      child: SizedBox(
        width: double.infinity,
        height: Dimensions.height350,
        child: salonImage.isEmpty
            ? Image.asset(
                AppImageAsset.salonOne,
                fit: BoxFit.fill,
              )
            : Image.network(
                "${AppLink.imageSalons}$salonImage",
                fit: BoxFit.fill,
              ),
      ),
    );
  }
}
