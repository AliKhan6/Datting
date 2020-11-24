import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/custom_navigation_bar.dart';
import 'package:dating/screens/text_with_someone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class MessageScreen extends StatelessWidget {
  List <String> userMessageList=['name1','name2','name3','name4','name5','name6','name7','name8','name9'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Messages'),
        centerTitle: true,
        leading: Text(''),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: userMessageList.length,
        itemBuilder: (context,index){
        return Padding(
          padding: EdgeInsets.only(top:10,left: 10,right: 10),
          child:GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TextWithSomeOne(userName: userMessageList[index],)));
            },
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  shape: BoxShape.circle
                                ),
                                child: Center(child: ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child:Image.asset('images/profile.jpg'),)),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(userMessageList[index]),
                                    Text('some thing about user')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text('5 sept'),
                        ),
                      ],
                    ),
                  ),
                ),
          ),
        );
      }),
      bottomNavigationBar: CustomNavigationBar(navigationBarIndex: 2,),
    );
  }
}
