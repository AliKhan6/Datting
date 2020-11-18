import 'dart:async';
import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/two_hearts.dart';
import 'package:dating/screens/login_screen.dart';
import 'package:flutter/material.dart';

/// Splash Screen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>SignInScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashScreenColor,
      body: Center(
          child:Center(child: TwoHearts(heartColor: Colors.white,),)
      ),
    );
  }
}
