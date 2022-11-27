import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../widgets/customBack_button.dart';
import '../widgets/customButton.dart';

class AddCreditCard extends StatefulWidget {
  const AddCreditCard({Key? key}) : super(key: key);

  @override
  State<AddCreditCard> createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
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
            text: "Add debit / credit card",
            fontSize: 20.sp,
            fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 23.h),
          Container(
            margin: const EdgeInsets.only(left: 34, right: 33),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
            decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffC2BEBE),
                  blurRadius: 4,
                  offset: Offset(0, 4), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            width: w,
            child: Column(
              children: [
                poppinsText(
                  text:
                      "Enter the last 10 digits and the expiry date as they appear on your debit and credit card",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff494141),
                ),
                SizedBox(height: 19.h),
                Row(
                  children: [
                    poppinsText(
                        text: "471530",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                    SizedBox(width: 5.w),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: '',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 26.h),
                Row(
                  children: [
                    poppinsText(
                        text: "MM/YY",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                    SizedBox(width: 5.w),
                    SizedBox(
                      width: 73.w,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: '',
                        ),
                      ),
                    ),
                    SizedBox(width: 17.w),
                    SizedBox(
                      width: 73.w,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: '',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 26.h),
          Container(
              height: 41.h,
              width: 150.w,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff04F894),
                  ),
                  color: const Color(0xffD9D9D9).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: poppinsText(
                  text: "Submit",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff04F894),
                ),
              ))
        ],
      ),
    );
  }
}
