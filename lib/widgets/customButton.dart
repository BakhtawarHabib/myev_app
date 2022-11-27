import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myev_app/utils/color_manager.dart';
import 'package:myev_app/utils/text_helper.dart';

import '../utils/screen_util.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  VoidCallback onTap;
  double radius;
  FontWeight? fontWeight;
  CustomButton(
      {required this.buttonText,
      required this.onTap,
      required this.radius,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 43.h,
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              gradient: const LinearGradient(
                colors: [Color(0xff04F894), Color(0xff03C1DB)],
              )),
          child: Text(buttonText.toUpperCase(),
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 15.sp,
                fontWeight: fontWeight ?? FontWeight.bold,
              )),
        ));
  }
}
