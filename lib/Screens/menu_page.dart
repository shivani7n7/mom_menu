import 'package:flutter/material.dart';
import 'package:mom_menu/models/menu_item.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      const SliverAppBar(
        actions: <Widget>[
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.search),
          ),
        ],
        pinned: true,
        expandedHeight: 300.0,
        flexibleSpace: FlexibleSpaceBar(
          background: FlexSpaceContent(),
        ),
      ),
      MenuItems(),
    ]);
  }
}

class FlexSpaceContent extends StatelessWidget {
  final double appBarHeight = 150.0;
  const FlexSpaceContent();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top + 50;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Sai Sagar',
                  style: TextStyle(fontSize: 20.0),
                ),
                Icon(Icons.info_outline),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Maharastrian',
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '4.1',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Text('Rating'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '4',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Text('Tiffins'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '₹ 80',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Text('per tiffin'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'VEG ONLY',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ToggleSwitch(
                    minWidth: 30.0,
                    cornerRadius: 20,
                    activeBgColor: Colors.green,
                    activeTextColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveTextColor: Colors.white,
                    labels: ['', ''],
                    activeColors: [Colors.green, Colors.red],
                    onToggle: (index) {
                      print('switched to: $index');
                    })
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'RECOMMENDED',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE88A60),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
