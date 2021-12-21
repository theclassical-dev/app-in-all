import 'package:allapptest/con.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final text;
  final press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,  
    this.color = PmColor, 
    this.textColor = Colors.white, 
    this.text, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.7),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          // color: PLColor,
          onPressed: press,
          child: Text(text, style: TextStyle(color: textColor)),
          style: ElevatedButton.styleFrom(
            primary: PmColor,
          ),
        ),
      ),
    );
  }
}
