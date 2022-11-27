import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../widgets/customBack_button.dart';
import '../widgets/customButton.dart';

bool isChecked = false;

List titles = [
  'Contactless debit or credit card',
  'Free to use',
];

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                      gradient: const LinearGradient(
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
                      gradient: const LinearGradient(
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
        children: [
          SizedBox(height: 25.h),
          ...List.generate(
            titles.length,
            (index) => CheckBox(
              index: '${titles[index]}',
            ),
          ),
          const Spacer(),
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

class CheckBox extends StatefulWidget {
  String index;
  CheckBox({required this.index});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 43, right: 28),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            poppinsText(
              text: '${widget.index}',
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
            SizedBox(height: 30.h),
            Container(
              height: 19,
              width: 19,
              child: Checkbox(
                // activeColor: Colors.white,
                activeColor: const Color(0xff04F894),
                hoverColor: const Color(0xff04F894),
                checkColor: Colors.white,
                side: const BorderSide(
                  color: Color(0xff04F894), //your desire colour here
                  width: 1.5,
                ),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                value: isChecked,
                onChanged: (v) {
                  setState(() {
                    isChecked = v!;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
