import 'package:flutter/material.dart';
import 'package:mom_menu/Screens/top_drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mom_menu/components/cuisineTypeListView.dart';
import 'package:mom_menu/models/kitchen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget appBarTitle = Text('Location..');
  Icon appBarIcon = Icon(Icons.search);

  Widget imageCarousal = new Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/mainpagefoodimages/1.jpg'),
        AssetImage('images/mainpagefoodimages/2.jpg'),
        AssetImage('images/mainpagefoodimages/3.jpg'),
        AssetImage('images/mainpagefoodimages/4.jpeg')
      ],
      autoplay: true,
      dotSize: 4.0,
      indicatorBgPadding: 5.0,
      animationCurve: Curves.fastOutSlowIn,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: DrawerTab(),
        ),
        appBar: buildAppBar(),
        body: ListView(
          children: <Widget>[
            imageCarousal,
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Categories',
              ),
            ),
            CuisineTypeHorizontalView(),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                'Categories',
              ),
            ),
            Container(
              height: 500,
              child: Kitchen(),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: InkWell(
        child: appBarTitle,
        onTap: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: appBarIcon,
          onPressed: () {
            setState(() {
              if (this.appBarIcon.icon == Icons.search) {
                this.appBarIcon = Icon(Icons.close);
                this.appBarTitle = TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Search for Restaurant or dish',
                      hintStyle: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                );
              } else {
                this.appBarIcon = Icon(Icons.search);
                this.appBarTitle = Text('Location..  ');
              }
            });
          },
        ),
      ],
    );
  }
}
