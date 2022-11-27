import 'package:flutter/material.dart';
import 'package:myev_app/forgotPassword/forgot_password.dart';
import 'package:myev_app/map_screen/map_screen.dart';
import 'package:myev_app/setting_screen/settings_more_screens/featureRequestScreens/my_chat_ev.dart';
import 'package:myev_app/utils/color_manager.dart';
import '../list_screen/list_screen.dart';
import '../route_screen/routes_screen.dart';
import '../setting_screen/setting_screen.dart';
import '../utils/screen_util.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedScreenIndex = 0;

  final List _screens = [
    const MapScreen(),
    const ListsScreen(),
    const RoutesScreen(),
    const MyChatEv(),
    const SettingScreen()
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: _screens[_selectedScreenIndex],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  currentIndex: _selectedScreenIndex,
                  onTap: _selectScreen,
                  selectedItemColor: ColorManager.primaryColor,
                  selectedFontSize: 15.sp,
                  unselectedFontSize: 13.sp,
                  unselectedItemColor: ColorManager.black,
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                        icon: Image.asset("images/map_icon.png",
                            height: 24.h,
                            width: 24.w,
                            color: _selectedScreenIndex == 0
                                ? ColorManager.primaryColor
                                : ColorManager.black),
                        label: 'Map'),
                    BottomNavigationBarItem(
                        icon: Image.asset("images/list_icon.png",
                            height: 24.h,
                            width: 24.w,
                            color: _selectedScreenIndex == 1
                                ? ColorManager.primaryColor
                                : ColorManager.black),
                        label: "List"),
                    BottomNavigationBarItem(
                        icon: Image.asset("images/routes_icon.png",
                            height: 24.h,
                            width: 24.w,
                            color: _selectedScreenIndex == 2
                                ? ColorManager.primaryColor
                                : ColorManager.black),
                        label: 'Routes'),
                    BottomNavigationBarItem(
                        icon: Image.asset("images/chat_icon.png",
                            height: 24.h,
                            width: 24.w,
                            color: _selectedScreenIndex == 3
                                ? ColorManager.primaryColor
                                : ColorManager.black),
                        label: "Chat"),
                    BottomNavigationBarItem(
                        icon: Image.asset("images/settings_icon.png",
                            height: 24.h,
                            width: 24.w,
                            color: _selectedScreenIndex == 4
                                ? ColorManager.primaryColor
                                : ColorManager.black),
                        label: "Settings")
                  ],
                ),
              ),
            )));
  }
}
