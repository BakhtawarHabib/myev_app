import 'package:flutter/material.dart';

import '../../../utils/screen_util.dart';
import '../../../utils/text_helper.dart';
import '../../../widgets/customBack_button.dart';

bool isFirstChecked = false;
bool isSecondChecked = false;
List firstSubscriptionData = [
  'Filter by location type',
  'Filter by user rating',
  'Filter by Multi chargers',
  'Filter by New chargers',
];
List secondSubscriptionData = [
  'View NEW chargers',
  'View whar3words',
  'View ad-free',
  'Apple CarPlay & Android Auto',
];
List saveMultipleDataList1 = [
  'save multiple Evs',
  'save multiple filters',
  'save multiple route plans',
];

List contactMethod = [
  'Email',
  'Phone',
  'Text',
  'Post',
  'myev maps product Updates',
];

class SubscriptionsPlansCompare extends StatefulWidget {
  const SubscriptionsPlansCompare({Key? key}) : super(key: key);

  @override
  State<SubscriptionsPlansCompare> createState() =>
      _SubscriptionsPlansCompareState();
}

class _SubscriptionsPlansCompareState extends State<SubscriptionsPlansCompare> {
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
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              poppinsText(
                color: const Color(0xff000000),
                text: "myev maps  Subscription plans",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 17.h),
              poppinsText(
                color: const Color(0xff000000),
                text: "Plan quicker with plus",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 10.h),
              poppinsText(
                color: const Color(0xff000000),
                text:
                    "Lorem ipsum dolor sit amet consectetur. Neque felis etiam augue nunc egestas. Iaculis ut.",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 17.h),
              poppinsText(
                color: const Color(0xff000000),
                text: "Drive Smarter with premium",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 10.h),
              poppinsText(
                color: const Color(0xff000000),
                text:
                    "Lorem ipsum dolor sit amet consectetur. Neque felis etiam augue nunc egestas. Iaculis ut.",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 24.h),
              Column(
                children: List.generate(
                    firstSubscriptionData.length,
                    (index) => CheckIt(
                          title: '${firstSubscriptionData[index]}',
                        )),
              ),
              Column(
                children: List.generate(
                  saveMultipleDataList1.length,
                  (index) => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          poppinsText(
                            color: const Color(0xff000000),
                            text: saveMultipleDataList1[index],
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              poppinsText(
                                color: const Color(0xff000000),
                                text: "max 3",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(width: 30.w),
                              poppinsText(
                                color: const Color(0xff000000),
                                text: "Unlimited",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                    ],
                  ),
                ),
              ),
              Column(
                children: List.generate(
                    secondSubscriptionData.length,
                    (index) => CheckIt(
                          title: '${secondSubscriptionData[index]}',
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckIt extends StatefulWidget {
  String title;
  CheckIt({required this.title});

  @override
  State<CheckIt> createState() => _CheckItState();
}

class _CheckItState extends State<CheckIt> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            poppinsText(
              color: const Color(0xff000000),
              text: widget.title,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            Row(
              children: [
                SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child: Checkbox(
                    value: isFirstChecked,
                    onChanged: (val) {
                      if (val != null) {
                        isFirstChecked = val;
                        setState(() {});
                      }
                    },
                    // checkColor: Color(0xff04F894),
                    activeColor: const Color(0xff04F894),
                    hoverColor: const Color(0xff04F894),
                    side: const BorderSide(
                      color: Color(0xff04F894), //your desire colour here
                      width: 1.5,
                    ),
                  ),
                ),
                SizedBox(width: 30.w),
                SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child: Checkbox(
                    value: isSecondChecked,
                    onChanged: (val) {
                      if (val != null) {
                        isSecondChecked = val;
                        setState(() {});
                      }
                    },
                    // checkColor: Color(0xff04F894),
                    activeColor: const Color(0xff04F894),
                    hoverColor: const Color(0xff04F894),
                    side: const BorderSide(
                      color: Color(0xff04F894), //your desire colour here
                      width: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15.h)
      ],
    );
  }
}
