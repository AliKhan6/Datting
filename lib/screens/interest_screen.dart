import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
class InterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        title: Text('Interested in you'),
        centerTitle: true,
        leading: Text(''),
      ),
      body: Center(child: Text('Interesed in you'),)

      ,
      bottomNavigationBar: CustomNavigationBar(navigationBarIndex: 3,),
    );
  }
}
