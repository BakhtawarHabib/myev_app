import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/screen_util.dart';
import '../utils/text_helper.dart';
import '../widgets/customBack_button.dart';

class MyEvMapHistory extends StatefulWidget {
  const MyEvMapHistory({Key? key}) : super(key: key);

  @override
  State<MyEvMapHistory> createState() => _MyEvMapHistoryState();
}

class _MyEvMapHistoryState extends State<MyEvMapHistory> {
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
            text: "myev MAPS history",
            fontSize: 20.sp,
            fontWeight: FontWeight.w500),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  //                    <-- BoxDecoration
                  border: Border(bottom: BorderSide(color: Color(0xffC2BEBE))),
                ),
                child: ListTile(
                  title: Text(''),
                ),
              );
            },
          ),
        )
      ])),
    );
  }
}
