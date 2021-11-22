import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.brown,
    ),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App In All"),
      ),
      body: Container(
        // width: 300,
        height: 300,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all (8),
              width: 100,
              height: 100,
              color: Colors.red,
              alignment: Alignment.center,
             ),
             Container(
              padding: const EdgeInsets.all (8),
              width: 100,
              height: 100,
              color: Colors.yellow,
              alignment: Alignment.center,

              ),
              Container(
              padding: const EdgeInsets.all (8),
              width: 100,
              height: 100,
              color: Colors.greenAccent,
              alignment: Alignment.center,
             ),
          ],
        ),
      ),
    );
  }
}
