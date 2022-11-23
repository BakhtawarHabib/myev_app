import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../widgets/customBack_button.dart';
import '../widgets/customButton.dart';
import '../widgets/myTextField.dart';
import '../widgets/social_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formForgotKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: Form(
            key: _formForgotKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomBackButton(),
                    SizedBox(height: 20.h),
                    poppinsText(
                        text: "Forgot password",
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w500),
                    SizedBox(height: 20.h),
                    poppinsText(
                      text:
                          "Please enter your email address. You will receive a link to create new password via email.",
                      fontSize: 15.sp,
                    ),
                    SizedBox(height: 30.h),
                    MyTextField(
                      passVlidate: false,
                      controller: emailController,
                      errorText: "Please enter your email or phone number",
                      hintText: "Username or Email",
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(height: 30.h),
                    CustomButton(
                      radius: 5,
                      buttonText: "SEND",
                      onTap: () async {},
                    ),
                    SizedBox(height: 70.h),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
