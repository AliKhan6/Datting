import 'package:dating/constants/colors_constants.dart';
import 'package:dating/custom_widgets/input_text_field.dart';
import 'package:dating/custom_widgets/rounded_button.dart';
import 'package:dating/custom_widgets/two_hearts.dart';
import 'package:dating/screens/create_account_screen.dart';
import 'package:flutter/material.dart';

///SignIn Screen
class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TwoHearts(heartColor: splashScreenColor,),
              Text('Dating App',style: TextStyle(color: splashScreenColor,fontSize: 28),),
              CustomInputTextField(labelText:'Name',hintText: 'Enter your name',hidePassword: false,),
              SizedBox(height: 10,),
              CustomInputTextField(labelText: 'Password',hintText: 'Enter your password',hidePassword: true,),
              SizedBox(height: 30,),
              RoundedButton(buttonName: 'Login',onPressed: null,),
              SizedBox(height: 10,),
              RoundedButton(buttonName: 'Create Account',
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountScreen())),),
            ],
          ),
        ),
      ),
    );
  }
}
