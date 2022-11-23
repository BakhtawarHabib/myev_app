import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import '../forgotPassword/forgot_password.dart';
import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../verification/verification_screen.dart';
import '../widgets/customButton.dart';
import '../widgets/myTextField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

final _formSignUpKey = GlobalKey<FormState>();

bool status = false;

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0.0,
      ),
      body: Form(
          key: _formSignUpKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      height: 160.h,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  MyTextField(
                    passVlidate: false,
                    controller: emailController,
                    errorText: "Please enter your email or phone number",
                    hintText: "Email",
                  ),
                  SizedBox(height: 20.h),
                  MyTextField(
                    passVlidate: false,
                    controller: passController,
                    errorText: "Please enter your password",
                    hintText: "Password",
                  ),
                  SizedBox(height: 20.h),
                  MyTextField(
                    obscureTextValue: true,
                    passVlidate: true,
                    controller: confirmPassController,
                    errorText: "Please enter your password",
                    hintText: "Comfirm password",
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(height: 30.h),
                  CustomButton(
                    radius: 5,
                    buttonText: "SIGN UP",
                    onTap: () async {
                      if (_formSignUpKey.currentState!.validate()) {
                        Get.to(() => const VerificationScreen());
                      }
                    },
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontFamily: "poppins",
                              fontSize: 15),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              text: ' Log In',
                              style: const TextStyle(
                                  fontFamily: "poppins",
                                  color: ColorManager.primaryColor,
                                  fontSize: 15),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          )),
      bottomNavigationBar: Container(
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: FlutterSwitch(
                height: 20.0,
                width: 40.0,
                padding: 4.0,
                toggleSize: 15.0,
                borderRadius: 10.0,
                activeColor: ColorManager.primaryColor,
                value: status,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'I agree to myev MAPS',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontFamily: "poppins",
                      fontSize: 15.sp),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: ' Terms & \nConditions ',
                      style: TextStyle(
                          fontFamily: "poppins",
                          color: ColorManager.primaryColor,
                          fontSize: 15.sp),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: ' & ',
                      style: TextStyle(
                          fontFamily: "poppins",
                          color: ColorManager.black,
                          fontSize: 15.sp),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: 'Privacy Policy.',
                      style: TextStyle(
                          fontFamily: "poppins",
                          color: ColorManager.primaryColor,
                          fontSize: 15.sp),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}




// App Icon 

