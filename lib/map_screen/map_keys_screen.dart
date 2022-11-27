import 'package:flutter/material.dart';
import 'package:myev_app/add_credit_card/add_card.dart';
import 'package:myev_app/generated/assets.dart';
import 'package:myev_app/myEvMapHistory/my_ev_map_history.dart';
import 'package:myev_app/setting_screen/settings_more_screens/account_screen.dart';
import 'package:myev_app/setting_screen/settings_more_screens/app_setting.dart';
import 'package:myev_app/setting_screen/settings_more_screens/ev_model.dart';
import 'package:myev_app/setting_screen/settings_more_screens/featured_request.dart';
import 'package:myev_app/setting_screen/settings_more_screens/preferences.dart';
import 'package:myev_app/setting_screen/settings_more_screens/subscription/subscription.dart';
import 'package:myev_app/utils/text_helper.dart';
import 'package:myev_app/widgets/customBack_button.dart';
import '../utils/screen_util.dart';

class MapKeysScreen extends StatefulWidget {
  const MapKeysScreen({super.key});

  @override
  State<MapKeysScreen> createState() => _MapKeysScreenState();
}

class _MapKeysScreenState extends State<MapKeysScreen> {
  List connectorTypesTitles = [
    "CHAdeMo",
    "Testa",
    "CCS",
    "Type 2",
    "Type 1",
    "3-pin",
    "Hydrogen"
  ];
  List connectorTypesIcons = [
    Assets.imagesConnectorChaDemoIcon,
    Assets.imagesConnectorTestaIcon,
    Assets.imagesConnectorCssIcon,
    Assets.imagesConnectorType2Icon,
    Assets.imagesConnectorType1Icon,
    Assets.imagesConnector3PinIcon,
    Assets.imagesConnectorHydrogenIcon,
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
              text: "Key", fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            poppinsText(
                text: "Map markers",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600),
            SizedBox(height: 20.h),
            mapMakerWidget(
                Assets.imagesMapRapidIcon, "Rapid", "(greater than 25kw)"),
            SizedBox(height: 14.h),
            mapMakerWidget(
                Assets.imagesMapFastIcon, "Fast", "(from 25kw to 22kW)"),
            SizedBox(height: 14.h),
            mapMakerWidget(
                Assets.imagesMapSlowIcon, "Slow", "(from 25kw to 6kW)"),
            SizedBox(height: 14.h),
            mapMakerWidget(Assets.imagesMapChargingIcon, "Charging",
                "(On at least one device)"),
            SizedBox(height: 14.h),
            mapMakerWidget(Assets.imagesMapOutServiceIcon, "Out of service",
                "(all devices)"),
            SizedBox(height: 14.h),
            mapMakerWidget(
              Assets.imagesMapPublicIcon,
              "Public",
            ),
            SizedBox(height: 14.h),
            mapMakerWidget(
              Assets.imagesMapHomePointIcon,
              "myev Home Point",
            ),
            SizedBox(height: 14.h),
            mapMakerWidget(
              Assets.imagesMapWorkPointIcon,
              "myev Work Point",
            ),
            SizedBox(height: 14.h),
            mapMakerWidget(
              Assets.imagesMapHydrogenIcon,
              "Hydrogen",
            ),
            SizedBox(height: 20.h),
            poppinsText(
                text: "Connector types",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600),
            SizedBox(height: 20.h),
            ...List.generate(
                connectorTypesIcons.length,
                (index) => Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              connectorTypesIcons[index],
                              height: 30.h,
                            ),
                            SizedBox(width: 10.w),
                            poppinsText(
                                text: connectorTypesTitles[index],
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ))
          ]),
        )));
  }

  Row mapMakerWidget(image, title, [subTitle]) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 44.h,
        ),
        SizedBox(width: 10.w),
        Column(
          mainAxisAlignment: subTitle != null
              ? MainAxisAlignment.center
              : MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            poppinsText(
                text: title, fontSize: 16.sp, fontWeight: FontWeight.w500),
            subTitle != null
                ? poppinsText(
                    text: subTitle,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff494141))
                : SizedBox(),
          ],
        )
      ],
    );
  }
}
