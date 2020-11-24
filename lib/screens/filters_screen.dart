import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../custom_widgets/rounded_button.dart';


class FiltersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        centerTitle: true,
        leading: Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10,),
                Text('Languages',style: TextStyle(fontSize: 20,color: splashScreenColor),),
                SizedBox(height: 10,),
                ///
                /// Languages Region
                ///
                Container(
                  height: 40,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      InterestedFilters(filterText:'English',),
                      InterestedFilters(filterText:'Spanish',),
                      InterestedFilters(filterText:'Hindi',),
                      InterestedFilters(filterText:'Filipino',),
                      InterestedFilters(filterText:'French',),
                      InterestedFilters(filterText:'Australian',),
                    ],
                  ),
                ),

                SizedBox(height: 25,),
                Text('Region',style: TextStyle(fontSize: 20,color: splashScreenColor),),
                SizedBox(height: 10,),
                ///
                /// Region Area
                ///
                Container(
                  height: 40,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      InterestedFilters(filterText:'USA',),
                      InterestedFilters(filterText:'South Asia',),
                      InterestedFilters(filterText:'North Asia',),
                      InterestedFilters(filterText:'Middle East',),
                      InterestedFilters(filterText:'Australia',),
                      InterestedFilters(filterText:'Russia',),
                      InterestedFilters(filterText:'African Countries',),
                    ],
                  ),
                ),

                SizedBox(height: 25,),
                Text('Gender',style: TextStyle(fontSize: 20,color: splashScreenColor),),
                SizedBox(height: 10,),
                ///
                /// Gender Area
                ///
                Container(
                  height: 40,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      InterestedFilters(filterText:'Female',),
                      InterestedFilters(filterText:'Male',),
                      InterestedFilters(filterText:'Others',),
                    ],
                  ),
                ),

                SizedBox(height: 25,),
                Text('Age',style: TextStyle(fontSize: 20,color: splashScreenColor),),
                SizedBox(height: 10,),
                ///
                /// Age Area
                ///
                Container(
                  height: 40,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      InterestedFilters(filterText:'Under 20',),
                      InterestedFilters(filterText:'20 & above',),
                      InterestedFilters(filterText:'30 & above',),
                      InterestedFilters(filterText:'40 & above',),
                    ],
                  ),
                ),

                SizedBox(height: 25,),
                Text('Religion',style: TextStyle(fontSize: 20,color: splashScreenColor),),
                SizedBox(height: 10,),
                ///
                /// Religion Area
                ///
                Container(
                  height: 40,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      InterestedFilters(filterText:'Christian',),
                      InterestedFilters(filterText:'Muslim',),
                      InterestedFilters(filterText:'Hindu',),
                      InterestedFilters(filterText:'Jew',),
                    ],
                  ),
                ),
              ],
            ),

            ///
            /// Filter Button
            ///
            RoundedButton(
                buttonName: 'Find Match',
                onPressed: null)
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(navigationBarIndex: 1,),
    );
  }
}

class InterestedFilters extends StatelessWidget {
  final String filterText;
  InterestedFilters({this.filterText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: splashScreenColor,width: 1.5),
          borderRadius: BorderRadius.circular(28),
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
