import 'package:flutter/material.dart';
import 'package:myev_app/utils/color_manager.dart';

import '../utils/screen_util.dart';

class MyTextField extends StatefulWidget {
  String errorText;
  String hintText;

  var controller;
  bool? passVlidate;
  bool? obscureTextValue;
  MyTextField({
    required this.errorText,
    this.controller,
    this.passVlidate,
    this.obscureTextValue,
    required this.hintText,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureTextValue ?? false,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffC2BEBE))),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffC2BEBE))),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffC2BEBE))),
          suffixIcon: widget.passVlidate == true
              ? GestureDetector(
                  onTap: () {
                    if (widget.obscureTextValue == true) {
                      setState(() {
                        widget.obscureTextValue = false;
                      });
                    } else {
                      widget.obscureTextValue = true;
                      setState(() {});
                    }
                  },
                  child: widget.obscureTextValue != true
                      ? const Icon(
                          Icons.visibility,
                          color: Color(0xffC2BEBE),
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Color(0xffC2BEBE),
                        ),
                )
              : null,
          prefixIconColor: ColorManager.greenappColor,
          hintText: widget.hintText,
          hintStyle:
              TextStyle(fontSize: 15.sp, color: const Color(0xffC2BEBE))),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.errorText;
        } else if (widget.passVlidate == true) {
          if (widget.controller.text.length < 6) {
            widget.errorText = "Password lenght is less than six character";
            return widget.errorText;
          } else if (widget.controller.text == "123456") {
            widget.errorText = "Password is too easy";
            return widget.errorText;
          }
        }
        return null;
      },
    );
  }
}
