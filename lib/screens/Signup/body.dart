import 'package:allapptest/con.dart';
import 'package:allapptest/screens/Login/already_have_acc.dart';
import 'package:allapptest/screens/Login/input_field.dart';
import 'package:allapptest/screens/Login/login.dart';
import 'package:allapptest/screens/Login/password_field.dart';
import 'package:allapptest/screens/Signup/background.dart';
import 'package:allapptest/screens/Signup/or_divider.dart';
import 'package:allapptest/screens/Signup/social_icon.dart';
import 'package:allapptest/screens/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.asset("assets/images/4.png", height: size.height * 0.35),
          InputField(hintText: "info@zazu.zeh", onChanged: (value) {}),
          PasswordField(onChanged: (value) {}),
          RoundedButton(
            text: "Sign Up",
            press: () {},
          ),
          // SizedBox(height: 10),
          AlredyHaveAnAccount(
              login: false,
              press: () {
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              }),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: "assets/social/fb.svg",
                press: () {},
                ),
              SocialIcon(
                iconSrc: "assets/social/insta.svg",
                press: () {},
                ),
              SocialIcon(
                iconSrc: "assets/social/fb.svg",
                press: () {},
                ),
            ],
          )
        ],
      ),
    );
  }
}
