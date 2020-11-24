import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/custom_navigation_bar.dart';
import 'package:dating/screens/interest_screen.dart';
import 'package:dating/screens/messages_screen.dart';
import 'package:dating/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overlay/overlay.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <String> names=['name1','name2','name3','name4','name5','name6','name7','name8','name9',];
  // Variable for showing search bar or home text
  bool showSearchBar = true;
  // List for drop down button
  List<String> values = ['My Profile', 'About Us', 'Log Out'];


  /// appbar
  Widget appBar=Text('Explore');
  /// search icon in app bar
  Icon actionIcon=Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body:Column(
        children: <Widget>[
          ///
          /// Custom App Bar
          ///
          customAppBar(),


          ///
          /// Custom Body
          ///
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height*0.81,
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                children:List.generate(names.length, (index){
                  return  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 3,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen(userName: names[index],)));
                        },
                        child: Column(
                          children: [
                            ///
                            /// Image part
                            Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: MediaQuery.of(context).size.width * 0.50,
                              child:ClipRRect(
                                borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              child:Image.asset('images/profile.jpg',fit: BoxFit.cover,),),
                            ),
                            ///
                            /// Name , heart ,status part
                            SizedBox(height: 8,),
                            Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width * 0.50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(names[index]),
                                      SizedBox(width: 10,),
                                      Icon(Icons.favorite_border,size: 15,),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(navigationBarIndex: 0,),
    );
  }

  ///
/// Custom App Bar
///
  Widget customAppBar(){
    List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
    String _selectedLocation;
    return Material(
      elevation: 3.0,
      child: Container(
        height: 89,
        padding: EdgeInsets.only(top: 35),
        color: primaryColor,
        child: showSearchBar ?
        /// Home text and search icon row.... when showSearchBar variable is true
        ///
        Row(
          children: <Widget>[
            SizedBox(width: MediaQuery.of(context).size.width/2.6,),
            Text('Home',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w500),),
            /// Drop down Button
            ///
            DropdownButton<String>(
              icon: Icon(Icons.more_vert,color: Colors.white,size: 30,),
              underline: SizedBox(),
              onChanged: (String newValue) {
                if(newValue == values[0]){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => MessageScreen()));
                }else{
                  Navigator.push(context, MaterialPageRoute(builder: (_) => InterestScreen()));
                }
              },
              items: values.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(width: 15,),
            /// Search Button
            ///
            GestureDetector(
                onTap: (){
                  setState(() {
                    showSearchBar = showSearchBar == false ? true : false;
                  });
                },
                child: Icon(Icons.search,color: Colors.white,size: 30,)),
            SizedBox(width: 10,),

          ],
        ) :
        ///
        /// Text Field and Cross icon row...... When showSearchBar variable is false
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search...',
                        contentPadding: EdgeInsets.only(left: 20,bottom: 3),
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
            ),
            IconButton(icon: Icon(Icons.close,color: Colors.white,),
              onPressed: (){
                setState(() {
                  showSearchBar = showSearchBar == false ? true : false;
                });
              },),
            SizedBox(width: 8,)
          ],
        ),
      ),
    );
 }
}







