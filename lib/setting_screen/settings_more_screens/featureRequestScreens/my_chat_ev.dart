import 'package:fk_toggle/fk_toggle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myev_app/setting_screen/settings_more_screens/featureRequestScreens/post_chat.dart';
import 'package:myev_app/utils/color_manager.dart';
import 'package:myev_app/widgets/customButton.dart';
import '../../../utils/screen_util.dart';
import '../../../utils/text_helper.dart';

class MyChatEv extends StatefulWidget {
  const MyChatEv({Key? key}) : super(key: key);

  @override
  State<MyChatEv> createState() => _MyChatEvState();
}

class _MyChatEvState extends State<MyChatEv> {
  int? checkIt = 0;
  @override
  Widget build(BuildContext context) {
    final OnSelected selected = ((index, instance) {
      setState(() {
        checkIt = index;
      });
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: poppinsText(
          text: "Feature Request",
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => const PostChat());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/action.png'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 23.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffC2BEBE),
                      blurRadius: 4,
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: FkToggle(
                    width: 80,
                    height: 40,
                    labels: const ['Chat', 'All'],
                    fontSize: 14.sp,
                    selectedColor: ColorManager.primaryColor,
                    backgroundColor: const Color(0xffF3F3F3),
                    enabledElementColor: ColorManager.white,
                    disabledElementColor: ColorManager.black,
                    cornerRadius: 30,
                    onSelected: selected),
              ),
              SizedBox(height: 34.h),
              checkIt == 0
                  ? Column(
                      children:
                          List.generate(2, (index) => const PersonContainer()),
                    )
                  : Column(
                      children: [
                        poppinsText(
                            text:
                                "There is a problem with your network connection"),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                          ),
                          child: CustomButton(
                              buttonText: "Retry", onTap: () {}, radius: 5),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonContainer extends StatelessWidget {
  const PersonContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: const EdgeInsets.only(left: 16, top: 27, right: 18, bottom: 10),
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffF1F1F1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset('images/avatar.png'),
              ),
              SizedBox(width: 10.w),
              Column(
                children: [
                  Row(
                    children: [
                      poppinsText(
                        text: 'Rayees',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      poppinsText(
                        text: ' ( CA zap-Map',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("images/backward.png", height: 18.h),
                      poppinsText(
                        text: '  In reply to COP32',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ],
              ),
              poppinsText(
                text: '4 mins ago',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 11.h),
          poppinsText(
            text:
                'Lorem ipsum dolor sit amet\nconsectetur. Nulla venenatis\nsemper facilisis urna gravida\nnunc. Tellus tortor mauris\neuismod rhoncus magna\ntincidunt. Tincidunt scelerisque et\net auctor id. Praesent tortor\nfaucibus etiam urna. Mi blandit\nnisi massa nisl bibendum.',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: 15.h),
          Container(
            height: 1.h,
            width: w,
            color: const Color(0xff595555),
          ),
          SizedBox(height: 5.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/backGrey.png',
                height: 18.h,
              ),
              poppinsText(
                color: const Color(0xff828282),
                text: ' Reply',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(width: 24.w),
              Icon(
                Icons.flag,
                size: 20.h,
                color: const Color(0xff828282),
              ),
              poppinsText(
                color: const Color(0xff828282),
                text: ' Flag',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
