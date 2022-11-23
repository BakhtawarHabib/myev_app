import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../customBotttomNavBar/custom_bottom_navbar.dart';
import '../forgotPassword/forgot_password.dart';
import '../signUp/signUp_screen.dart';
import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../widgets/customButton.dart';
import '../widgets/myTextField.dart';
import '../widgets/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _formKey = GlobalKey<FormState>();
bool checkValue = false;

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
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
          key: _formKey,
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
                    hintText: "Username or Email",
                  ),
                  SizedBox(height: 20.h),
                  MyTextField(
                    obscureTextValue: true,
                    passVlidate: true,
                    controller: passController,
                    errorText: "Please enter your password",
                    hintText: "Password",
                  ),
                  SizedBox(height: 10.h),
                  InkWell(
                    onTap: () {
                      Get.to(() => const ForgotPassword());
                    },
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: poppinsText(
                            text: "Forgot Password?",
                            color: const Color(0xffC2BEBE),
                            fontSize: 14.sp)),
                  ),
                  SizedBox(height: 30.h),
                  CustomButton(
                    radius: 5,
                    buttonText: "LOGIN",
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        Get.offAll(() => CustomBottomNavigationBar());
                      }
                    },
                  ),
                  SizedBox(height: 70.h),
                  SocialButton(
                    child: Row(
                      children: [
                        SizedBox(width: 25.w),
                        Image.asset(
                          "images/apple_icon.png",
                          height: 21.h,
                        ),
                        SizedBox(width: 25.w),
                        poppinsText(
                            text: "Continue with Apple",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w800,
                            color: ColorManager.lightgrey),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SocialButton(
                    child: Row(
                      children: [
                        SizedBox(width: 25.w),
                        Image.asset(
                          "images/goggle_icon.png",
                          height: 21.h,
                        ),
                        SizedBox(width: 25.w),
                        poppinsText(
                            text: "Continue with Google",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w800,
                            color: ColorManager.lightgrey),
                      ],
                    ),
                  ),
                  SizedBox(height: 70.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontFamily: "poppins",
                              fontSize: 15),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(() => const SignUpScreen());
                                },
                              text: ' Sign Up',
                              style: const TextStyle(
                                  fontFamily: "poppins",
                                  color: ColorManager.primaryColor,
                                  fontSize: 15),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          )),
    );
  }
}




// App Icon 

