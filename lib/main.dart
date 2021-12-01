import 'package:allapptest/pages/home_futurebuilder.dart';
import 'package:allapptest/pages/home_page.dart';
import 'package:allapptest/pages/login.dart';
import 'package:allapptest/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs!.getBool("loggedIn")==true
      ?HomepageFb()
      :LoginPage(),
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
