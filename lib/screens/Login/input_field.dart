import 'package:allapptest/con.dart';
import 'package:allapptest/screens/Login/text_field.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final hintText;
  final IconData icon;
  final onChanged;
  const InputField({
    Key? key, 
    this.hintText, 
    this.icon = Icons.person, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: PmColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
