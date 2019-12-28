import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {
  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  var menuList = [
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
    {
      "pic": "images/mainpagefoodimages/cuisinetype/fast food.jpeg",
      "title": "Veg burger",
      "icon": "veg",
      "price": "80.0",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return SingleMenuItem(
            itemPic: menuList[index]['pic'],
            itemName: menuList[index]['title'],
            itemType: menuList[index]['icon'],
            itemPrice: menuList[index]['price'],
            index: index,
          );
        },
        childCount: menuList.length,
      ),
    );
  }
}

class SingleMenuItem extends StatelessWidget {
  final itemName;
  final itemPic;
  final itemPrice;
  final itemType;
  final index;

  SingleMenuItem(
      {this.itemPic, this.itemName, this.itemType, this.itemPrice, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Material(
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: Column(
              children: <Widget>[
                Text(
                  itemName.toUpperCase(),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '₹ ' + itemPrice,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.black),
                      ),
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                )
              ],
            ),
          ),
          child: Image.asset(itemPic),
        ),
      ),
    );
  }
}

//
//Container(
//child: Column(
//children: <Widget>[
//Image.asset(itemPic),
//Text(itemName),
//Text(itemPrice),
//],
//),
//);

//Container(
//child: GridTile(
//child: ListTile(
//title: Image.asset(itemPic),
//subtitle:
//),
//),
//);

//GridView.builder(
//itemCount: menuList.length,
//gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//crossAxisCount: 2,
//),
//itemBuilder: (BuildContext context, int index) {
//return SingleMenuItem(
//itemPic: menuList[index]['pic'],
//itemName: menuList[index]['title'],
//itemType: menuList[index]['icon'],
//itemPrice: menuList[index]['price'],
//index: index,
//);
//},
//);
