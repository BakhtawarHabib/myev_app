import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/screen_util.dart';
import '../../../utils/text_helper.dart';

class PostChat extends StatefulWidget {
  const PostChat({Key? key}) : super(key: key);

  @override
  State<PostChat> createState() => _PostChatState();
}

class _PostChatState extends State<PostChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: poppinsText(
          text: "Post chat",
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 18.h),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              height: 248.h,
              width: 323.w,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  poppinsText(
                    text: "Chat",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Image.asset(
                        'images/messageFill.png',
                        height: 18.h,
                      ),
                      SizedBox(width: 8.w),
                      poppinsText(
                        text: "Add Comment or photo",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      maxLines: 5,
                      minLines: 2,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          hintText:
                              "Post a question, Make comment, and join\nthe conversation"),
                    ),
                  ),
                  SizedBox(height: 13.h),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset('images/camera.png'),
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Image.asset('images/gallery.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
