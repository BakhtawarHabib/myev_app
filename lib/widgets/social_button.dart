import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';

class SocialButton extends StatelessWidget {
  Widget child;
  SocialButton({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 43.h,
        width: Get.width,
        decoration: BoxDecoration(
            border:
                Border.all(color: const Color(0xff325DF9).withOpacity(0.21)),
            borderRadius: BorderRadius.circular(5),
            color: ColorManager.white),
        child: child);
  }
}
