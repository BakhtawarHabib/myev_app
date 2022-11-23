import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myev_app/utils/text_helper.dart';
import 'package:myev_app/widgets/customBack_button.dart';
import '../utils/color_manager.dart';
import '../utils/screen_util.dart';

class ListsScreen extends StatefulWidget {
  const ListsScreen({super.key});

  @override
  State<ListsScreen> createState() => _ListsScreenState();
}

class _ListsScreenState extends State<ListsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Padding(
            padding: EdgeInsets.all(20.0),
            child: CustomBackButton(),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 40.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Color(0xffC2BEBE))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Color(0xffC2BEBE))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Color(0xffC2BEBE))),
                      // ignore: prefer_const_constructors
                      prefixIcon: const Icon(Icons.search,
                          color: ColorManager.lightgrey),
                      contentPadding: const EdgeInsets.all(10),
                      hintText: "enter post code, state and city",
                      hintStyle: TextStyle(
                          fontSize: 15.sp, color: const Color(0xffC2BEBE))),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC2BEBE))),
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC2BEBE))),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC2BEBE))),
                    // ignore: prefer_const_constructors
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset("images/location_icon.png",
                          height: 24.h,
                          width: 24.w,
                          color: ColorManager.lightgrey),
                    ),
                    hintText: "My Location",
                    hintStyle: TextStyle(
                        fontSize: 15.sp, color: const Color(0xffC2BEBE))),
              ),
            ],
          ),
        ));
  }
}
