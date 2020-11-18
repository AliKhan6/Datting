import 'package:dating/constants/colors_constants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  String userName;
  ProfileScreen({this.userName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        title: Text(userName),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        child: ClipRRect(
                          child: Image.asset('images/profile.jpg',fit: BoxFit.cover,),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 205,
                        left: 130,
                        child: IconButton(
                            icon: Icon(Icons.favorite,color: splashScreenColor,size: 50,),
                            onPressed: null)
                    ),
                  ],
                ),
              ),
            ),
            Text(userName),
            UserProfileDetails(userText: userName,),
            Text(userName),
            Text(userName),
            Text(userName),
            Text(userName),
          ],
        ),
      ),
    );
  }
}

class UserProfileDetails extends StatelessWidget {
  String userText;
  UserProfileDetails({this.userText});
  @override
  Widget build(BuildContext context) {
    return Text(userText);
  }
}
