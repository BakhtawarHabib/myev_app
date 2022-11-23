import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/screen_util.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Image.asset(
        "images/back_icon.png",
        height: 15.sp,
      ),
    );
  }
}
