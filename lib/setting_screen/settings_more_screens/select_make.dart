import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/screen_util.dart';
import '../../utils/text_helper.dart';
import '../../widgets/customBack_button.dart';

class SelectMake extends StatefulWidget {
  const SelectMake({Key? key}) : super(key: key);

  @override
  State<SelectMake> createState() => _SelectMakeState();
}

class _SelectMakeState extends State<SelectMake> {
  List titles = [
    'AiXam-Mega',
    'Audi',
    'Bentley',
    'BMW',
    'BNW Motorrad',
    'BYD',
    'Carver',
    'Chevrolet',
    'Citroen',
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
          text: "Select make",
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 36, left: 38),
        child: Column(
          children: [
            SizedBox(height: 26.h),
            ...List.generate(
              titles.length,
              (index) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      poppinsText(
                        text: "${titles[index]}",
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: const Color(
                          0xff000000,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_right,
                        color: Color(
                          0xffC2BEBE,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 42.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
