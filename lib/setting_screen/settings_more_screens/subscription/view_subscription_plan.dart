import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myev_app/setting_screen/settings_more_screens/subscription/subscription_plan_compare_screen.dart';
import 'package:myev_app/widgets/customButton.dart';
import '../../../utils/color_manager.dart';
import '../../../utils/screen_util.dart';
import '../../../utils/text_helper.dart';
import '../../../widgets/customBack_button.dart';

class ViewSubscriptionsPlans extends StatefulWidget {
  const ViewSubscriptionsPlans({Key? key}) : super(key: key);

  @override
  State<ViewSubscriptionsPlans> createState() => _ViewSubscriptionsPlansState();
}

class _ViewSubscriptionsPlansState extends State<ViewSubscriptionsPlans> {
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
            text: "Subscription plans",
            fontSize: 20.sp,
            fontWeight: FontWeight.w500),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.h),
                InkWell(
                  onTap: () {
                    Get.to(() => const SubscriptionsPlansCompare());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 20.h,
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: poppinsText(text: "Compare"),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 18.h),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  poppinsText(
                    text: "myev maps EXTRA",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff494141),
                  ),
                  SizedBox(height: 20.h),
                  poppinsText(
                      text:
                          "Ad free experience, Apple CarPlay & Android Auto functionality Unlimited route plans & EV models",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  SizedBox(height: 15.h),
                  CustomButton(
                    buttonText: "Annual \$20.00",
                    onTap: () {},
                    radius: 100,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 15.h),
                  Center(child: poppinsText(text: "1 Week Free Trial")),
                  SizedBox(height: 15.h),
                  Container(
                    alignment: Alignment.center,
                    height: 43.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.transparent,
                        border: Border.all(color: ColorManager.primaryColor)),
                    child: poppinsText(text: "Monthly \$2.99.00"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
