import 'package:flutter/material.dart';
import 'package:myev_app/utils/color_manager.dart';
import 'package:myev_app/utils/text_helper.dart';
import 'package:myev_app/widgets/customBack_button.dart';
import 'package:myev_app/widgets/customButton.dart';
import 'package:myev_app/widgets/myTextField.dart';

import '../../utils/screen_util.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
              text: "Account", fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                poppinsText(
                    text:
                        "Lorem ipsum dolor sit amet consectetur. Neque felis etiam augue nunc egestas. Iaculis ut.",
                    fontSize: 16.sp),
                SizedBox(height: 10.h),
                poppinsText(
                    text: "First Name (Private",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                MyTextField(
                  errorText: "Please fill",
                  hintText: "Sweeten",
                  hintTextColor: ColorManager.black,
                ),
                SizedBox(height: 10.h),
                poppinsText(
                    text: "Surname (Private",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                MyTextField(
                  errorText: "Please fill",
                  hintText: "Cecil",
                  hintTextColor: ColorManager.black,
                ),
                SizedBox(height: 10.h),
                poppinsText(
                    text: "Username (Private",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                MyTextField(
                  errorText: "Please fill",
                  hintText: "Sweetences",
                  hintTextColor: ColorManager.black,
                ),
                SizedBox(height: 10.h),
                poppinsText(
                    text: "Display Name (Private",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                MyTextField(
                  errorText: "Please fill",
                  hintText: "Sweeten",
                  hintTextColor: ColorManager.black,
                ),
                SizedBox(height: 10.h),
                poppinsText(
                    text: "Email (Private",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                MyTextField(
                  errorText: "Please fill",
                  hintText: "Sweetences830@gmail.com",
                  hintTextColor: ColorManager.black,
                ),
                SizedBox(height: 10.h),
                poppinsText(
                    text:
                        "Lorem ipsum dolor sit amet consectetur. Neque felis etiam augue nunc egestas. Iaculis ut.",
                    fontSize: 16.sp),
                SizedBox(height: 20.h),
                poppinsText(
                    text: "Password",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                MyTextField(
                  errorText: "Please fill",
                  hintText: "*************",
                  hintTextColor: ColorManager.black,
                  obscureTextValue: true,
                  passVlidate: true,
                ),
                SizedBox(height: 10.h),
                poppinsText(
                    text:
                        "Lorem ipsum dolor sit amet consectetur. Neque felis etiam augue nunc egestas. Iaculis ut.",
                    fontSize: 16.sp),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/dummy_dp.jpg",
                        height: 84.h,
                        width: 80.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Container(
                      alignment: Alignment.center,
                      width: 120.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: ColorManager.primaryColor)),
                      child: poppinsText(text: "Choose file"),
                    )
                  ],
                ),
                SizedBox(height: 40.h),
                CustomButton(buttonText: "Update", onTap: () {}, radius: 100)
              ],
            ),
          ),
        ));
  }
}
