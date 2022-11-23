import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myev_app/utils/color_manager.dart';
import 'package:myev_app/widgets/customBack_button.dart';
import '../utils/text_helper.dart';
import '../widgets/customButton.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(),
                  SizedBox(height: 20.h),
                  Center(
                    child: poppinsText(
                        text: "Verification Email",
                        textAlign: TextAlign.center,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.black),
                  ),
                  Center(
                    child: poppinsText(
                        text: "Please enter the code we just sent to email",
                        textAlign: TextAlign.center,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: ColorManager.lightgrey),
                  ),
                  Center(
                    child: poppinsText(
                      text: "thaiyausx@gmail.com",
                      textAlign: TextAlign.center,
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  OtpTextField(
                    numberOfFields: 4,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    borderRadius: BorderRadius.circular(10),
                    borderColor: ColorManager.lightgrey,
                    enabledBorderColor: ColorManager.lightgrey,
                    focusedBorderColor: ColorManager.primaryColor,
                    fillColor: Colors.transparent,
                    filled: true,
                    fieldWidth: 70.w,
                    borderWidth: 1.2,
                    showFieldAsBox: true,
                    textStyle:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w700),
                    onCodeChanged: (String code) {},
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'If you didn’t recieve a code ?',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontFamily: "poppins",
                              fontSize: 15),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              text: ' Resend',
                              style: const TextStyle(
                                  fontFamily: "poppins",
                                  color: ColorManager.primaryColor,
                                  fontSize: 15),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  CustomButton(
                    buttonText: "Continue",
                    onTap: () {},
                    radius: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
