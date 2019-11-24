import 'package:flutter/material.dart';

class DrawerTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, // place the logout at the end of the drawer
        children: <Widget>[
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  accountName: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("JOHN DOE"),
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
                  accountEmail: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Text('1234567890'),
                        SizedBox(width: 10),
                        Text('johndoe121@gmail.com')
                      ],
                    ),
                  ),
                  currentAccountPicture:
                      Image.asset('images/Halflogo_icon.ico'),
                ),
                ListTile(
                  onTap: () {},
                  dense: true,
                  title: Text("My Orders"),
                  leading: Icon(Icons.shopping_cart),
                ),
                ListTile(
                  onTap: () {},
                  dense: true,
                  title: Text("My Addresses"),
                  leading: new Icon(Icons.home),
                ),
                ListTile(
                  dense: true,
                  title: Text("Payments"),
                  leading: Icon(Icons.payment),
                  onTap: () {},
                ),
                ListTile(
                  dense: true,
                  title: Text("Settings"),
                  leading: new Icon(Icons.settings),
                ),
                Divider(),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            dense: true,
            title: Text("LOGOUT"),
            trailing: Icon(Icons.power_settings_new),
          ),
        ],
      ),
    );
  }
}
