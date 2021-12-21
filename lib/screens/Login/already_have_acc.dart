import 'package:allapptest/con.dart';
import 'package:flutter/material.dart';

class AlredyHaveAnAccount extends StatelessWidget {
  final login;
  final press;
  const AlredyHaveAnAccount({
    Key? key, 
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        login ? "Don't have an Account ?" : "Already Have an Account",
        style: TextStyle(
          color: PmColor,
        ),
      ),
      GestureDetector(
        onTap: press,
        child: Text(
          login ? "Sign UP" : "Sign In",
          style: TextStyle(color: PmColor, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}
