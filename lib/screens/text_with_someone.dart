import 'package:dating/constants/colors_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWithSomeOne extends StatelessWidget {
  String userName;
  TextWithSomeOne({this.userName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(27),
              child: Image.asset('images/profile.jpg'),),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
                itemBuilder:(context,index){
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    color: splashScreenColor,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Salam'),),
                      ),
                  ),
                );
              },
            ),
          ),
          ///
          /// Send message textfield and send button
          Container(
            height: 50,
            color: splashScreenColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.camera_alt,color: Colors.white,), onPressed: null),
                Container(
                  height: 33,
                  width: 250,
                  child: Center(
                    child: TextField(
                      cursorColor: Color(0xFFFF7777),
                      style: TextStyle(color: Color(0xFFFF7777)),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: splashScreenColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                  ),
                ),
                IconButton(icon:Icon(Icons.send,color: Colors.white,), onPressed: null)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
