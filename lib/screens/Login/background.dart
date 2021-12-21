import 'package:flutter/material.dart';

class Backgroud extends StatelessWidget {
  final child;
  const Backgroud({
    Key? key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/bg2.jpg",
              // width: size.width * 0.35,
            ),
          ),
          child,
      ]),
    );
  }
}
