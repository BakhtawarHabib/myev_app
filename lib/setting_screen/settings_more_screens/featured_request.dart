import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/screen_util.dart';
import '../../utils/text_helper.dart';
import '../../widgets/customBack_button.dart';
import 'featureRequestScreens/my_chat_ev.dart';

class FeaturesRequest extends StatefulWidget {
  const FeaturesRequest({Key? key}) : super(key: key);

  @override
  State<FeaturesRequest> createState() => _FeaturesRequestState();
}

class _FeaturesRequestState extends State<FeaturesRequest> {
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
          text: "Feature Request",
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 33.h),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    SizedBox(
                      height: 38.h,
                      width: 300.w,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xffC2BEBE),
                            ),
                            contentPadding: const EdgeInsets.all(8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Color(0xffC2BEBE),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            )),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 5,
                              color: Color(0xff000000).withOpacity(0.25),
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Image.asset("images/Vector.png"),
                      ),
                    ),
                    SizedBox(height: 19.h),
                  ],
                ),
              ),
            ),
            SizedBox(height: 19.h),
            Divider(),
            SizedBox(height: 12.h),
            ...List.generate(
              3,
              (index) => GestureDetector(
                onTap: () {
                  Get.to(() => MyChatEv());
                },
                child: Container(
                  padding: EdgeInsets.only(top: 7, left: 9, bottom: 8),
                  margin: EdgeInsets.only(bottom: 20),
                  height: 210.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        height: 90.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            top: BorderSide(
                              color: Color(0xff04F894),
                            ),
                            bottom: BorderSide(
                              color: Color(0xff04F894),
                            ),
                            left: BorderSide(
                              color: Color(0xff04F894),
                            ),
                            right: BorderSide(
                              color: Color(0xff04F894),
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
                              child: Image.asset('images/upArrow.png',
                                  height: 15.h),
                            ),
                            Divider(
                              color: Color(0xff03CBCF),
                              thickness: 2,
                            ),
                            poppinsText(
                              color: Color(0xff000000),
                              text: '${index + 1}',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          poppinsText(
                            text: "Show overstay fees in App",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Color(0xffC2BEBE),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xff000000).withOpacity(0.25),
                                      offset: Offset(0, 4),
                                      blurRadius: 4,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: poppinsText(
                                    text: 'OPEN',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                    color: Color(0xff828282)),
                              ),
                              SizedBox(width: 150.w),
                              Badge(
                                position: BadgePosition(start: 15, top: -20),
                                badgeColor: Color(0xff03C1DB),
                                badgeContent: Text('3'),
                                child: Image.asset(
                                  'images/message.png',
                                  height: 20.h,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.h),
                          Expanded(
                            child: poppinsText(
                              text:
                                  "I had to pay 12 cents per\nminute after 45 minutes.\nUnfortunately the Myev\nMAPS app doesn’t show the\nconditions and overstay\nfees.....",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
