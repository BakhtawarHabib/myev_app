import 'package:flutter/material.dart';
import 'package:myev_app/route_screen/access.dart';
import 'package:myev_app/route_screen/connector_types.dart';
import 'package:myev_app/route_screen/location_types.dart';
import 'package:myev_app/route_screen/payment.dart';
import 'package:myev_app/route_screen/user_rating.dart';
import 'package:myev_app/utils/color_manager.dart';
import 'package:myev_app/utils/text_helper.dart';
import 'package:myev_app/widgets/customButton.dart';
import 'package:steps_indicator/steps_indicator.dart';
import '../utils/screen_util.dart';
import '../widgets/customBack_button.dart';
import 'network.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  StepperType stepperType = StepperType.horizontal;
  List powerType = ["3KW", "7KW", "11KW", "50KW", "100KW", "350KW"];
  List titles = [
    "Connectors types",
    "Network",
    "Location types",
    "Payment",
    "Access",
    "User rating"
  ];
  List titlesIcons = [
    "images/connector_types_icon.png",
    "images/network_icon.png",
    "images/location.png",
    "images/payment_icon.png",
    "images/access_icon.png",
    "images/star_icon.png"
  ];

  List pages = [
    ConnecterTypes(),
    Network(),
    LocationTypes(),
    Payment(),
    Access(),
    UserRating()
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
        toolbarHeight: 60,
        title: poppinsText(
            text: "Filters", fontSize: 20.sp, fontWeight: FontWeight.w500),
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            poppinsText(
                text: "Filters", fontSize: 20.sp, fontWeight: FontWeight.bold),
            poppinsText(
                text: "Power type",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
            SizedBox(height: 30.h),
            SizedBox(
              width: w,
              height: 58.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StepsIndicator(
                    selectedStepSize: 20.h,
                    selectedStepBorderSize: 20.h,
                    doneStepSize: 20.h,
                    unselectedStepBorderSize: 20.h,
                    unselectedStepSize: 20.h,
                    selectedStep: -1,
                    nbSteps: 6,
                    doneLineColor: ColorManager.primaryColor,
                    doneStepColor: ColorManager.primaryColor,
                    undoneLineColor: ColorManager.primaryColor,
                    selectedStepColorIn: ColorManager.primaryColor,
                    selectedStepColorOut: ColorManager.primaryColor,
                    unselectedStepColorIn: ColorManager.primaryColor,
                    unselectedStepColorOut: ColorManager.primaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    6,
                    (index) => poppinsText(
                        text: powerType[index],
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp)),
              ),
            ),
            SizedBox(height: 10.h),
            const Divider(
              color: ColorManager.lightgrey,
              thickness: 0.6,
            ),
            SizedBox(height: 10.h),
            Column(
              children: List.generate(
                  titles.length,
                  (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pages[index]),
                        );
                      },
                      child:
                          listTileWidget(titles[index], titlesIcons[index]))),
            ),
            SizedBox(height: 40.h),
            CustomButton(buttonText: "Apply", onTap: () {}, radius: 5)
          ],
        ),
      ),
    );
  }

  Widget listTileWidget(String title, String leadingIcon) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  leadingIcon,
                  height: 24.h,
                  color: ColorManager.black,
                ),
                SizedBox(
                  width: 10.w,
                ),
                poppinsText(
                    text: title,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff494141)),
              ],
            ),
            Image.asset(
              "images/forward_icon.png",
              height: 15.h,
            )
          ],
        ),
        SizedBox(height: 20.h)
      ],
    );
  }
}
