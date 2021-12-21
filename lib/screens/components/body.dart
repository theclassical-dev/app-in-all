import 'package:allapptest/con.dart';
import 'package:allapptest/screens/Login/login.dart';
import 'package:allapptest/screens/Signup/signup.dart';
import 'package:allapptest/screens/components/button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Welcome Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.09),
        Image.asset(
          "assets/images/1.png",
          height: size.height * 0.45,
        ),
        RoundedButton(
          text: "Sign In",
          press: () {
            Navigator.pushReplacementNamed(context, LoginScreen.routeName);
          },
        ),
        RoundedButton(
          text: "Sign UP",
          color: PLColor,
          press: () {
            Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
          },
        ),
      ]),
    );
  }
}
