import 'package:flutter/material.dart';

class ColorManager {
  static const primaryColor = Color(0xFF04F894);
  static const secondaryColor = Color.fromARGB(210, 243, 202, 113);
  static const secondaryColor2 = Color.fromARGB(255, 245, 218, 186);

  static const requestHeadingGreyColor = Color(0xff969696);
  // ignore: use_full_hex_values_for_flutter_colors
  static const darkGrey = Color(0xff0747a7c);
  static const lightgrey = Color(0xffC2BEBE);
  static const lightgrey2 = Color.fromARGB(255, 231, 229, 229);

  static const red = Color(0xFFFF3B3B);
  static const lightRed = Color(0xFFFF5A5A);
  static const black = Color(0xff000000);
  static var lightblack = const Color(0xFF747A7C).withOpacity(0.7);
  static const white = Color(0xffFFFFFF);
  static const yellow = Colors.yellow;
  static const amber = Colors.amber;
  static const orangeTypeColor = Color(0xffF0AD5E);
  static const homeBackgroundColor = Color(0xFFEAEFED);

  static const greenappColor = Color(0xff2CC91F);
  static const lightgreen = Color(0xFFA0FF9C);
  static const lightgreen2 = Color(0xFFF4FFF3);

  static const fbColor = Color(0xff3B5998);
  static const defaultTextColor = Color(0xff353A41);
  static const borderColor = Color(0xffEFF0F8);
  static const dividerColor = Color(0xffE8EAFA);
  static const greenishBackGround = Color(0xffEAEFED);
  static const ratingColor = Color(0xffD1C533);
}

BoxShadow softShadow = BoxShadow(
  color: ColorManager.lightblack.withOpacity(0.1),
  blurRadius: 5,
  offset: const Offset(1, 0), // Shadow position
);
