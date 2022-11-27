import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myev_app/add_credit_card/add_card.dart';
import 'package:myev_app/myEvMapHistory/my_ev_map_history.dart';
import 'package:myev_app/setting_screen/settings_more_screens/account_screen.dart';
import 'package:myev_app/setting_screen/settings_more_screens/app_setting.dart';
import 'package:myev_app/setting_screen/settings_more_screens/ev_model.dart';
import 'package:myev_app/setting_screen/settings_more_screens/featured_request.dart';
import 'package:myev_app/setting_screen/settings_more_screens/preferences.dart';
import 'package:myev_app/setting_screen/settings_more_screens/subscription/subscription.dart';
import 'package:myev_app/utils/text_helper.dart';
import 'package:myev_app/widgets/customBack_button.dart';
import 'package:myev_app/widgets/customButton.dart';
import '../utils/color_manager.dart';
import '../utils/screen_util.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List accountTitles = [
    "myev",
    "EV model",
    "Subscriptions",
    "Preferences",
    "App settings",
    "Features request",
    "Add debit & credit card"
  ];
  List myevMAPSTitles = [
    "myev- MAPS history",
    "Add Credit card",
  ];
  List addAChargePointTitles = [
    "Add public charge point",
    "Suggest location",
    "Add home point",
    "Add work point",
  ];
  List myevMAPSPages = [
    const MyEvMapHistory(),
    // restoreAlertDialog(),
  ];

  List accountScreens = [
    const AccountScreen(),
    const EvModel(),
    const Subscriptions(),
    const Preferences(),
    const AppSettings(),
    const FeaturesRequest(),
    const AddCreditCard(),
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
          title: poppinsText(
              text: "Settings", fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.zero,
                elevation: 2.0,
                child: Container(
                  height: 117.h,
                  decoration: BoxDecoration(
                      color: ColorManager.primaryColor.withOpacity(0.2)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("images/dummy_dp.jpg"),
                        maxRadius: 30,
                      ),
                      SizedBox(width: 20.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          poppinsText(
                              text: "Sweeten Cecil",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                          poppinsText(
                              text: "Core John",
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    poppinsText(
                        text: "Account",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                    const Divider(
                      color: ColorManager.lightgrey,
                    ),
                    Column(
                      children: List.generate(
                          accountTitles.length,
                          (index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          accountScreens[index]),
                                );
                              },
                              child: listTileWidget(accountTitles[index]))),
                    ),
                    poppinsText(
                        text: "myev MAPS",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                    const Divider(
                      color: ColorManager.lightgrey,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const MyEvMapHistory());
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "myev- MAPS history", fontSize: 15.sp),
                              Image.asset(
                                "images/forward_icon.png",
                                height: 15.h,
                              )
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        paymentMethodsAlertDialog();
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "Add Credit card", fontSize: 15.sp),
                              Image.asset(
                                "images/forward_icon.png",
                                height: 15.h,
                              )
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                    poppinsText(
                        text: "Add a charge point",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                    const Divider(
                      color: ColorManager.lightgrey,
                    ),
                    Column(
                      children: List.generate(
                          addAChargePointTitles.length,
                          (index) =>
                              listTileWidget(addAChargePointTitles[index])),
                    ),
                    poppinsText(
                        text: "Support",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                    const Divider(
                      color: ColorManager.lightgrey,
                    ),
                    Column(
                      children: List.generate(
                          1,
                          (index) =>
                              listTileWidget("Help: Contactus@myevhub.com")),
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: poppinsText(
                          text: "Sign Out",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget listTileWidget(String title) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            poppinsText(text: title, fontSize: 15.sp),
            Image.asset(
              "images/forward_icon.png",
              height: 15.h,
            )
          ],
        ),
        const Divider(),
      ],
    );
  }

  Future<void> paymentMethodsAlertDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero,
            insetPadding: const EdgeInsets.all(10),
            elevation: 0.0,
            // title: Center(child: Text("Evaluation our APP")),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 101.h,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: const BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "payment Methods",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.center),
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset("images/close_icon.png",
                                        height: 20.h)),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              creditCardAlertDialog();
                            },
                            child: Row(
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                        "images/credit_card_icon.png",
                                        height: 45.h)),
                                SizedBox(width: 20.w),
                                poppinsText(
                                    text: "Credit Card or Debit Card",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ]))
              ],
            ));
      },
    );
  }

  Future<void> creditCardAlertDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero,
            insetPadding: const EdgeInsets.all(10),
            elevation: 0.0,
            // title: Center(child: Text("Evaluation our APP")),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 401.h,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: const BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.h),
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset("images/close_icon.png",
                                    height: 20.h)),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "Credit Card or Debit Card",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.center),
                              Row(
                                children: [
                                  Image.asset("images/visa_1.png",
                                      height: 27.h),
                                  SizedBox(width: 10.w),
                                  Image.asset("images/visa_2.png",
                                      height: 27.h),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          poppinsText(
                              text: "Card Number",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.center),
                          SizedBox(height: 10.h),
                          Expanded(
                            child: customOutlineTextField(),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              poppinsText(
                                  text: "Expire Date",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  textAlign: TextAlign.center),
                              SizedBox(width: 100.w),
                              poppinsText(
                                  text: "Cvc/ Cvv",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Expanded(
                                child: customOutlineTextField(),
                              ),
                              SizedBox(width: 20.w),
                              Expanded(
                                child: customOutlineTextField(),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          poppinsText(
                              text: "Name on card",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.center),
                          SizedBox(height: 10.h),
                          Expanded(
                            child: customOutlineTextField(),
                          ),
                          SizedBox(height: 20.h),
                          CustomButton(
                              buttonText: "Add payment Method",
                              onTap: () {},
                              radius: 100),
                          SizedBox(height: 10.h),
                        ])),
              ],
            ));
      },
    );
  }

  Container customOutlineTextField() {
    return Container(
      height: 41.h,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorManager.primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorManager.primaryColor),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorManager.primaryColor),
              borderRadius: BorderRadius.circular(10)),
          hintText: '',
        ),
      ),
    );
  }
}
