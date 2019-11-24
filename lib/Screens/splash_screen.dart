import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:mom_menu/Screens/login.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new LogIn(),
      image: Image.asset(
        'images/FullLogo.png',
        width: 500,
      ),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Color(0xFFE88A60),
    );
  }
}
