import 'package:flutter/material.dart';
import 'package:mom_menu/Screens/login.dart';
import 'package:mom_menu/Screens/sign_up.dart';
import 'package:mom_menu/Screens/splash_screen.dart';
import 'package:mom_menu/Screens/main_screen_page.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/login': (context) => LogIn(),
        '/signup': (context) => SignUp(),
        '/mainPage': (context) => MainPage(),
      },
      theme: ThemeData.dark(),
    ),
  );
}
