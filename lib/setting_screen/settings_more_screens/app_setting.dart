import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../utils/screen_util.dart';
import '../../utils/text_helper.dart';
import '../../widgets/customBack_button.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  String? selectedValue1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(20.0),
          child: CustomBackButton(),
        ),
        centerTitle: true,
        title: poppinsText(
          text: "App Settings",
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),
            poppinsText(
              text:
                  "Lorem ipsum dolor sit amet consectetur. Neque felis etiam augue nunc egestas. Iaculis ut.",
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff000000),
            ),
            SizedBox(height: 24.h),
            poppinsText(
              text: "User preferences",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff000000),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: poppinsText(
                    text: "Preferred Unit",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff000000),
                  ),
                ),
                Expanded(
                  child: DropdownButton2(
                    underline: Container(),
                    hint: Text(
                      'Miles',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: poppinsText(
                    text: "Preferred Unit",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff000000),
                  ),
                ),
                Expanded(
                  child: DropdownButton2(
                    underline: Container(),
                    hint: Text(
                      'United Kingom',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue1,
                    onChanged: (value) {
                      setState(() {
                        selectedValue1 = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                poppinsText(
                  text: "Lorem ipsum dolor sit a",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000),
                ),
                SizedBox(
                  height: 29.h,
                  width: 29.w,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (val) {
                      if (val != null) {
                        isChecked = val;
                        setState(() {});
                      }
                    },
                    // checkColor: Color(0xff04F894),
                    activeColor: const Color(0xff04F894),
                    hoverColor: const Color(0xff04F894),
                    side: const BorderSide(
                      color: Color(0xff04F894),
                    ),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xff04F894),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            poppinsText(
              text: "Device Settings",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff000000),
            ),
            SizedBox(height: 24.h),
            poppinsText(
              text:
                  "Lorem ipsum dolor sit amet consectetur. Neque felis etiam augue nunc egestas. Iaculis ut.",
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff000000),
            ),
            SizedBox(height: 24.h),
            poppinsText(
              text: "Your to device Settings are as shown",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff000000),
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                SizedBox(
                  height: 29.h,
                  width: 29.w,
                  child: Checkbox(
                    value: isChecked1,
                    onChanged: (val) {
                      if (val != null) {
                        isChecked1 = val;
                        setState(() {});
                      }
                    },
                    // checkColor: Color(0xff04F894),
                    activeColor: const Color(0xff04F894),
                    hoverColor: const Color(0xff04F894),
                    side: const BorderSide(
                      color: Color(0xff04F894),
                    ),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xff04F894),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(width: 11.w),
                poppinsText(
                  text: "Lorem ipsum dolor sit a",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                SizedBox(
                  height: 29.h,
                  width: 29.w,
                  child: Checkbox(
                    value: isChecked2,
                    onChanged: (val) {
                      if (val != null) {
                        isChecked2 = val;
                        setState(() {});
                      }
                    },
                    // checkColor: Color(0xff04F894),
                    activeColor: const Color(0xff04F894),
                    hoverColor: const Color(0xff04F894),
                    side: const BorderSide(
                      color: Color(0xff04F894),
                    ),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xff04F894),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(width: 11.w),
                poppinsText(
                  text: "Lorem ipsum dolor sit a",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
