import 'package:flutter/material.dart';

import '../../utils/screen_util.dart';
import '../../utils/text_helper.dart';
import '../../widgets/customBack_button.dart';

bool isChecked = false;
List evUpdates = [
  'myev maps product updates',
  'myev maps product updates',
  'myev maps product updates',
  'myev maps product updates',
  'myev maps product updates',
];

List contactMethod = [
  'Email',
  'Phone',
  'Text',
  'Post',
  'myev maps product Updates',
];

class Preferences extends StatefulWidget {
  const Preferences({Key? key}) : super(key: key);

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
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
          text: "Contact details",
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
                text:
                    "Lorem ipsum dolor sit amet consectetur. Neque felis etiam augue nunc egestas. Iaculis ut.",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 17.h),
              poppinsText(
                color: const Color(0xff000000),
                text: "What information would you like to receive from",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 24.h),
              ...List.generate(
                  evUpdates.length,
                  (index) => CheckIt(
                        title: '${evUpdates[index]}',
                      )),
              SizedBox(height: 28.h),
              poppinsText(
                color: const Color(0xff000000),
                text: "What contact method would you like to use?",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 24.h),
              ...List.generate(
                  evUpdates.length,
                  (index) => CheckIt(
                        title: '${contactMethod[index]}',
                      )),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
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
                      text: 'Register',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
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
          children: [
            SizedBox(
              height: 24.0,
              width: 24.0,
              child: Checkbox(
                value: isChecked,
                onChanged: (val) {
                  if (val != null) {
                    isChecked = val;
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
            SizedBox(width: 8.w),
            poppinsText(
              color: const Color(0xff000000),
              text: "${widget.title}",
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
        SizedBox(height: 21.h)
      ],
    );
  }
}
