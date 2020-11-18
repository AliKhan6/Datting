import 'package:dating/constants/colors_constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String buttonName;
  Function onPressed;
  RoundedButton({this.buttonName,@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.6,
        child: Center(child: Text(buttonName,style: TextStyle(color: Colors.white,fontSize: 18),)),
        decoration: BoxDecoration(
            color: splashScreenColor,
            borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}
