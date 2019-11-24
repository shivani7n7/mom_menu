import 'package:flutter/material.dart';
import 'package:mom_menu/Screens/login.dart';
import 'package:mom_menu/Screens/sign_up.dart';
import 'package:mom_menu/Screens/splash_screen.dart';

void main() {
  runApp(
    new MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/login': (context) => LogIn(),
        '/signup': (context) => SignUp(),
      },
    ),
  );
}
