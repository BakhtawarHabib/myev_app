import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myev_app/setting_screen/settings_more_screens/subscription/view_subscription_plan.dart';
import '../../../utils/screen_util.dart';
import '../../../utils/text_helper.dart';
import '../../../widgets/customBack_button.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
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
            text: "Subscriptions",
            fontSize: 20.sp,
            fontWeight: FontWeight.w500),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 18.h),
            poppinsText(
              text: 'You are currently not subscribed',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 59.h),
            InkWell(
              onTap: () {
                Get.to(() => const ViewSubscriptionsPlans());
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
                    text: 'View subscription plans',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 27.h),
            InkWell(
              onTap: () {
                restoreAlertDialog();
              },
              child: Container(
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
                    text: 'Restore subscription',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> restoreAlertDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero,
            elevation: 0.0,
            // title: Center(child: Text("Evaluation our APP")),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250.h,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset("images/close_icon.png",
                                height: 20.h)),
                      ),
                      poppinsText(
                          text:
                              "Any myev MAPS subscription purchases with your current apple ID will be associated with the Myev MAPS account you are currently signed in with",
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.center),
                      Container(
                        alignment: Alignment.center,
                        width: 135.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            border: Border.all(color: const Color(0xff494141)),
                            borderRadius: BorderRadius.circular(10)),
                        child: poppinsText(
                            text: "Continue",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.h)
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }
}
