import 'package:flutter/material.dart';

class Kitchen extends StatefulWidget {
  @override
  _KitchenState createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {
  var menuList = [
    {
      "serviceName": "Sai sagar services",
      "tiffinPic": "images/mainpagefoodimages/tifin2.jpg",
      "cuisine": "Maharastrian",
      "price": 80.0,
      "vegNonVeg": "non-veg",
      "rating": 4.0,
    },
    {
      "serviceName": "Si sagar services",
      "tiffinPic": "images/mainpagefoodimages/tifin2.jpg",
      "cuisine": "Maharastrian",
      "price": 80.0,
      "vegNonVeg": "non-veg",
      "rating": 4.0,
    },
    {
      "serviceName": "Sai sagar services",
      "tiffinPic": "images/mainpagefoodimages/tifin2.jpg",
      "cuisine": "Maharastrian",
      "price": 80.0,
      "vegNonVeg": "non-veg",
      "rating": 4.0,
    },
    {
      "serviceName": "Si sagar services",
      "tiffinPic": "images/mainpagefoodimages/tifin2.jpg",
      "cuisine": "Maharastrian",
      "price": 80.0,
      "vegNonVeg": "non-veg",
      "rating": 4.0,
    },
    {
      "serviceName": "Sai sagar services",
      "tiffinPic": "images/mainpagefoodimages/tifin2.jpg",
      "cuisine": "Maharastrian",
      "price": 80.0,
      "vegNonVeg": "non-veg",
      "rating": 4.0,
    },
    {
      "serviceName": "Si sagar services",
      "tiffinPic": "images/mainpagefoodimages/tifin2.jpg",
      "cuisine": "Maharastrian",
      "price": 80.0,
      "vegNonVeg": "non-veg",
      "rating": 4.0,
    },
    {
      "serviceName": "Sai sagar services",
      "tiffinPic": "images/mainpagefoodimages/tifin2.jpg",
      "cuisine": "Maharastrian",
      "price": 80.0,
      "vegNonVeg": "non-veg",
      "rating": 4.0,
    },
    {
      "serviceName": "Si sagar services",
      "tiffinPic": "images/mainpagefoodimages/tifin2.jpg",
      "cuisine": "Maharastrian",
      "price": 80.0,
      "vegNonVeg": "non-veg",
      "rating": 4.0,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: menuList.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleMenu(
            tiffinPic: menuList[index]['tiffinPic'],
            serviceName: menuList[index]['serviceName'],
            cuisine: menuList[index]['cuisine'],
            price: menuList[index]['price'],
            vegNonVeg: menuList[index]['vegNonVeg'],
            rating: menuList[index]['rating'],
          );
        });
  }
}

class SingleMenu extends StatelessWidget {
  final String tiffinPic;
  final String serviceName;
  final String cuisine;
  final double price;
  final String vegNonVeg;
  final double rating;

  SingleMenu(
      {this.tiffinPic,
      this.serviceName,
      this.cuisine,
      this.price,
      this.vegNonVeg,
      this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          GridTile(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/menuPage');
              },
              leading: Image.asset(
                tiffinPic,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(serviceName),
                      Text(rating.toString()),
                    ],
                  ),
                  Text(cuisine),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('₹ $price'),
                      Text(vegNonVeg),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
