import 'package:allapptest/con.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final child;
  const TextFieldContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: PLColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}