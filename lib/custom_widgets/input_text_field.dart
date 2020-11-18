import 'package:dating/constants/colors_constants.dart';
import 'package:flutter/material.dart';

class CustomInputTextField extends StatelessWidget {
  bool hidePassword;
  String labelText,hintText;
  CustomInputTextField({this.labelText,this.hintText,this.hidePassword});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        obscureText: hidePassword,
        style: TextStyle(color:splashScreenColor),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintText: hintText,
            hintStyle: TextStyle(color: textFieldColor),
            labelText: labelText,
            labelStyle: TextStyle(color: textFieldColor)
        ),
      ),
    );
  }
}
