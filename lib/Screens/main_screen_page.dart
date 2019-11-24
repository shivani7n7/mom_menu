import 'package:flutter/material.dart';
import 'package:mom_menu/Screens/top_drawer.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: DrawerTab(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Hff'),
        ),
      ),
    );
  }
}
