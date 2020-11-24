import 'package:dating/constants/colors_constants.dart';
import 'package:dating/screens/home_screen.dart';
import 'package:dating/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:primaryColor,
      ),
      home: HomeScreen(),
    );
  }
}





