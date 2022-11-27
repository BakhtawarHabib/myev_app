import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myev_app/widgets/customButton.dart';

import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../widgets/customBack_button.dart';

final items = [
  'Char.gy',
  'ESB Energy',
  'GeniePoint',
  'Mer',
  'MFG EV Power',
  'Osprey',
  'Alfa Power',
  'bp pluse',
  'ChargePlace Scotland',
  'Clenergy EV',
  'D2N2',
  'EB Changing',
  'Ecars NI',
  'BSB ecars',
  'Fastned'
];
bool check = false;

bool allCheck = false;

class Network extends StatefulWidget {
  const Network({Key? key}) : super(key: key);

  @override
  State<Network> createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
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
        toolbarHeight: 65,
        title: poppinsText(
            text: "Networks", fontSize: 20.sp, fontWeight: FontWeight.w500),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: poppinsText(text: "Save"),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    poppinsText(
                        text: "All",
                        fontSize: 20.sp,
                        color: Color(0xff494141),
                        fontWeight: FontWeight.w500),
                    SizedBox(width: 5.w),
                    Container(
                      height: 19,
                      width: 19,
                      child: Checkbox(
                        activeColor: Color(0xff04F894),
                        hoverColor: Color(0xff04F894),
                        checkColor: Colors.white,
                        side: BorderSide(
                          color: Color(0xff04F894),
                          width: 1.0,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff04F894),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        value: allCheck,
                        onChanged: (v) {
                          setState(
                            () {
                              if (allCheck == false) {
                                allCheck = true;
                                check = allCheck;
                              } else if (allCheck == true) {
                                allCheck = false;
                                check = allCheck;
                              }
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    //                    <-- BoxDecoration
                    border:
                        Border(bottom: BorderSide(color: Color(0xffC2BEBE))),
                  ),
                  child: CheckIt(
                    index: '${items[index]}',
                  ),
                );
              },
            ),
            SizedBox(height: 15.h),
            SizedBox(
              height: 41.h,
              width: 250.w,
              child: CustomButton(
                buttonText: 'Apply',
                onTap: () {
                  Get.back();
                },
                radius: 20,
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

class CheckIt extends StatefulWidget {
  String index;
  CheckIt({required this.index});

  @override
  State<CheckIt> createState() => _CheckItState();
}

class _CheckItState extends State<CheckIt> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(
          () {
            if (check == false) {
              check = true;
            } else if (check == true) {
              check = false;
            }
          },
        );
      },
      child: ListTile(
        title: Text(
          widget.index,
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Icon(
          Icons.check,
          color: check == false ? Colors.transparent : Colors.black,
        ),
      ),
    );
  }
}
