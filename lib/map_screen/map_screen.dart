import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:myev_app/utils/text_helper.dart';

import '../utils/screen_util.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              "images/filter_icon.png",
            ),
          ),
          centerTitle: true,
          title: poppinsText(text: "myev MAPS", fontSize: 17.sp),
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
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/map_dummy.png"),
                  fit: BoxFit.cover)),
        ));
  }
}
