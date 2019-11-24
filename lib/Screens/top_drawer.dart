import 'package:flutter/material.dart';
import 'package:mom_menu/main.dart';

class DrawerTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/Halflogo_icon.ico',
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'JOHN DOE',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.cyanAccent[700],
                              fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text('1234567890'),
                      SizedBox(width: 10),
                      Text('johndoe121@gmail.com')
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    child: Text("Home"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text(
                      "My Address",
                    ),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("Payment"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("Settings"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
