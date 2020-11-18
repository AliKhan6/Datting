import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        title: Text('Filters'),
        centerTitle: true,
        leading: Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child:Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Click your interests',style: TextStyle(fontSize: 20,color: splashScreenColor),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    InterestedFilters(filterText:'Male',),
                    InterestedFilters(filterText:'Female',),
                    InterestedFilters(filterText:'Under 20',),
                  ],
                )
              ],
            ),
          ),
        )
         ,
      ),
      bottomNavigationBar: CustomNavigationBar(navigationBarIndex: 1,),
    );
  }
}

class InterestedFilters extends StatelessWidget {
  String filterText;
  InterestedFilters({this.filterText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: splashScreenColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(filterText,style: TextStyle(color: splashScreenColor),),
          ),
        ),
      ),
    );
  }
}
