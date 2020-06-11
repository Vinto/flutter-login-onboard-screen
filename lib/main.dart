import 'package:flutter/material.dart';
import 'onboard_screens.dart';
import 'home.dart';
import 'login.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/screens': (context) => OnboardScreens(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
      },
    );
  }
}
