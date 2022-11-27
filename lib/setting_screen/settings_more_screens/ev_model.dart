import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myev_app/setting_screen/settings_more_screens/select_make.dart';

import '../../utils/screen_util.dart';
import '../../utils/text_helper.dart';
import '../../widgets/customBack_button.dart';

class EvModel extends StatefulWidget {
  const EvModel({Key? key}) : super(key: key);

  @override
  State<EvModel> createState() => _EvModelState();
}

class _EvModelState extends State<EvModel> {
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
        title: poppinsText(
            text: "EV profile", fontSize: 20.sp, fontWeight: FontWeight.w500),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 18.h),
            poppinsText(
              text: 'You have no EV Models',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 59.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const SelectMake());
              },
              child: Container(
                height: 41.h,
                width: 300.w,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff04F894)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: poppinsText(
                    color: const Color(0xff000000),
                    text: 'Add your ev model',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 27.h),
            Container(
              height: 41.h,
              width: 300.w,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0xff04F894),
                  Color(0xff03C1DB),
                ]),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: poppinsText(
                  color: Colors.white,
                  text: 'Add your ev model',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
