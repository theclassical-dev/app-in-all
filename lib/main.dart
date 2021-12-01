import 'package:allapptest/pages/home_page.dart';
import 'package:allapptest/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        routes: {
          LoginPage.routeName: (context) => LoginPage(),
          Homepage.routeName: (context) => Homepage(),
          },
        );
  }
}
