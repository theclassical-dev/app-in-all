import 'package:allapptest/con.dart';
import 'package:allapptest/screens/Login/already_have_acc.dart';
import 'package:allapptest/screens/Login/background.dart';
import 'package:allapptest/screens/Login/input_field.dart';
import 'package:allapptest/screens/Login/password_field.dart';
import 'package:allapptest/screens/Login/text_field.dart';
import 'package:allapptest/screens/Signup/signup.dart';
import 'package:allapptest/screens/components/button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Backgroud(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Image.asset("assets/images/2.png", height: size.height * 0.35),
        InputField(hintText: "Your Email", onChanged: (value) {}),
        PasswordField(onChanged: (value) {}),
        RoundedButton(
          text: "LOGIN",
          press: () {},
        ),
        AlredyHaveAnAccount(
          press: () {
            Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
          },
        )
      ],
    ));
  }
}
