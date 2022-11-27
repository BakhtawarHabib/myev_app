import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myev_app/utils/color_manager.dart';
import 'package:myev_app/utils/text_helper.dart';
import 'package:myev_app/widgets/customButton.dart';

import '../utils/screen_util.dart';
import 'filter_screen.dart';

class RoutesScreen extends StatefulWidget {
  const RoutesScreen({super.key});

  @override
  State<RoutesScreen> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                Get.to(() => StepperDemo());
              },
              child: Image.asset(
                "images/filter_icon.png",
              ),
            ),
          ),
          centerTitle: true,
          title: poppinsText(
              text: "Route planner",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                "images/search_icon.png",
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              poppinsText(
                  text: "You have no route plans",
                  fontSize: 15.sp,
                  color: ColorManager.lightgrey),
              CustomButton(
                  buttonText: "Add new route plan", onTap: () {}, radius: 5)
            ],
          ),
        ));
  }
}
