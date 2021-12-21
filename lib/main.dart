import 'package:allapptest/con.dart';
import 'package:allapptest/pages/home_futurebuilder.dart';
import 'package:allapptest/pages/home_page.dart';
import 'package:allapptest/pages/login.dart';
import 'package:allapptest/screens/Login/login.dart';
import 'package:allapptest/screens/Signup/signup.dart';
import 'package:allapptest/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: welcomeScreen(),
        theme: ThemeData(
         primaryColor: PmColor,
         scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          LoginPage.routeName: (context) => LoginPage(),
          Homepage.routeName: (context) => Homepage(),
          LoginScreen.routeName: (context) => LoginScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),

          },
        );
  }   
}
