import 'package:allapptest/con.dart';
import 'package:allapptest/screens/Login/text_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final onChanged;
  const PasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          obscureText: true,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(
              Icons.lock,
              color: PmColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: PmColor,
            ),
            border: InputBorder.none,
          )),
    );
  }
}
