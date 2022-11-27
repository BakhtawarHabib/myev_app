import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myev_app/widgets/customButton.dart';

import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../widgets/customBack_button.dart';

class Access extends StatefulWidget {
  const Access({Key? key}) : super(key: key);

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {
  List titles = [
    '24 hours access',
    'Public access',
    'No physical restictions',
    'Hide myev Home point',
    'Hide myev work point',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(20.0),
          child: CustomBackButton(),
        ),
        centerTitle: true,
        toolbarHeight: 60,
        title: poppinsText(
            text: "Access", fontSize: 20.sp, fontWeight: FontWeight.w500),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 50.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          ColorManager.primaryColor,
                          Colors.white,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: poppinsText(text: "Save"),
                ),
                SizedBox(height: 5.h),
                Container(
                  alignment: Alignment.center,
                  width: 70.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          ColorManager.primaryColor,
                          Colors.white,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: poppinsText(text: "Cancel"),
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.h),
          ...List.generate(
            titles.length,
            (index) => Container(
              margin: EdgeInsets.only(bottom: 31, left: 43),
              child: poppinsText(
                  text: '${titles[index]}',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000)),
            ),
          ),
          Spacer(),
          Center(
            child: SizedBox(
              height: 41.h,
              width: 250.w,
              child: CustomButton(
                buttonText: 'Apply',
                onTap: () {
                  Get.back();
                },
                radius: 20,
              ),
            ),
          ),
          SizedBox(height: 20.h)
        ],
      ),
    );
  }
}
