import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myev_app/widgets/customButton.dart';

import '../utils/color_manager.dart';
import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../widgets/customBack_button.dart';

class ConnecterTypes extends StatefulWidget {
  const ConnecterTypes({Key? key}) : super(key: key);

  @override
  State<ConnecterTypes> createState() => _ConnecterTypesState();
}

class _ConnecterTypesState extends State<ConnecterTypes> {
  final dc = [
    'CCS Combo',
    'Tesla CCS Combo',
    'Tesla Type 2',
    'CHAdeMO',
  ];

  final ac = [
    'Type 2 Mennekes',
    'Type 1 Yazaki',
    'Tesla Type 2',
    '3-pin',
    'Commando',
  ];
  final hydrogen = [
    'Hydrogen',
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
            text: "Connector types",
            fontSize: 20.sp,
            fontWeight: FontWeight.w500),
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
                      gradient: LinearGradient(
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h),
            Center(
              child: poppinsText(
                text: "DC",
                fontSize: 18.sp,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.h),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dc.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 60),
                    decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xffC2BEBE))),
                    ),
                    child: ListTile(
                      title: poppinsText(
                        text: "${dc[index]}",
                        fontSize: 16.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                }),
            SizedBox(height: 16.h),
            Center(
              child: poppinsText(
                text: "AC",
                fontSize: 18.sp,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.h),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ac.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 60),
                    decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xffC2BEBE))),
                    ),
                    child: ListTile(
                      title: poppinsText(
                        text: "${ac[index]}",
                        fontSize: 16.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                }),
            SizedBox(height: 36.h),
            Center(
              child: poppinsText(
                text: "Hydrogen",
                fontSize: 18.sp,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: poppinsText(
                text: "${hydrogen[0]}",
                fontSize: 16.sp,
                color: Color(0xff000000),
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(),
            SizedBox(height: 65.h),
            Center(
              child: SizedBox(
                  height: 41.h,
                  width: 250.w,
                  child: CustomButton(
                      buttonText: 'Apply', onTap: () {}, radius: 20)),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
