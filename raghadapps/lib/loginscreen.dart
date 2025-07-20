import 'package:flutter/material.dart';
import 'package:raghadapps/Homescreen.dart';

class LoginScreen extends StatelessWidget {
  static const String routName = 'login'; //وبجكت من كلاس نوع سترنق وهدا اسمه
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('شاشة الدخول'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //نشغل الزر
            Navigator.of(context).pushNamed(HomeScreen.routName);
          },
          child: Text('دحول'),
        ),
      ),
    );
  }
}
