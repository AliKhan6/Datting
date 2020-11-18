import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/custom_navigation_bar.dart';
import 'package:dating/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overlay/overlay.dart';
class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  List <String> names=['name1','name2','name3','name4','name5','name6','name7','name8','name9',];
  /// appbar
  Widget appBar=Text('Explore');
  /// search icon in app bar
  Icon actionIcon=Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        title: appBar,
        centerTitle: true,
        leading:Text(''),
        actions: [
          IconButton(icon: actionIcon,
            onPressed:(){
            setState(() {
              if(this.actionIcon.icon == Icons.search)
                {
                  this.actionIcon =  Icon(Icons.close,);
                  this.appBar =  Container(
                    height: 40,
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                          color: splashScreenColor,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)
                          ),
                            hintText: "Search here ...",
                            hintStyle: TextStyle(color:splashScreenColor)
                        ),
                      ),
                    ),
                  );
                }
              else {
                this.actionIcon = Icon(Icons.search);
                this.appBar =  Text("Explore");
              }
            });
            },
          ),
          SizedBox(width: 10,),
          GestureDetector(
            onTap:(){
//              CustomOverlay(
//                context: context,
//                // Using overlayWidget
//                overlayWidget: Positioned(
//                  top: 100,
//                  left: 300,
//                  right: 100,
//                  child: Padding(
//                    padding: EdgeInsets.all(8.0),
//                    child: Card(
//                      child: Padding(
//                        padding: EdgeInsets.all(8),
//                        child: Text(
//                            ' can always close this overlay by tapping anywhere in the darker areas.'),
//                      ),
//                    ),
//                  ),
//                ),
//              );
            },
              child: Icon(Icons.more_vert)),
        ],
      ),
      body:GridView.count(
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
                      height: MediaQuery.of(context).size.height * 0.18,
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
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
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
      bottomNavigationBar: CustomNavigationBar(navigationBarIndex: 0,),
    );
  }
}






