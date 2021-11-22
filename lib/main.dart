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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all (8),
          width: 100,
          height: 100,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center ,
          decoration: BoxDecoration(
            color: Colors. red,
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Colors.purple,
              Colors.orange,
            ]),
            ),
          child: Text("I am a Box", 
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize:20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      )
    );
  }
}
