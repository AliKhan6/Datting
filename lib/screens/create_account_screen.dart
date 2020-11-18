import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/input_text_field.dart';
import 'package:dating/custom_widgets/rounded_button.dart';
import 'package:dating/screens/explore_screen.dart';
import 'package:flutter/material.dart';
class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      width:150,
                      child: Center(child: Image.asset('images/profile_icon.png',scale: 5,))),
                  Positioned(
                      top: 60,
                      left: 100,
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: splashScreenColor,
                          child: Icon(Icons.camera_alt,color: Colors.white,))
                  ),
                ],
              ),
            ),
            CustomInputTextField(labelText: 'Name',hintText: 'Enter your name',hidePassword: false,),
            CustomInputTextField(labelText: 'Gender',hintText: 'Gender',hidePassword: false,),
            CustomInputTextField(labelText: 'Religion',hintText: 'Religion',hidePassword: false,),
            CustomInputTextField(labelText: 'Skin tone',hintText: 'Skin tone',hidePassword: false,),
            CustomInputTextField(labelText: 'Age',hintText: 'Age',hidePassword: false,),
            CustomInputTextField(labelText: 'Height',hintText: 'Height',hidePassword: false,),
            CustomInputTextField(labelText: 'weight',hintText: 'weight',hidePassword: false,),
            CustomInputTextField(labelText: 'Interested in',hintText: 'Interested in',hidePassword: false,),
            CustomInputTextField(labelText: 'Password',hintText: 'Password',hidePassword: true,),
            CustomInputTextField(labelText: 'Confirm Password',hintText: 'Confirm Password',hidePassword: true,),
            SizedBox(height: 10,),
            Text('By clicking sign up you agree to our'),
            Text('Terms & conditions',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),),
            SizedBox(height: 20,),
            RoundedButton(buttonName: 'Sign Up',
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ExploreScreen())),),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
