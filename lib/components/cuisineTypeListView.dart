import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuisineTypeHorizontalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Cuisine(
            cuisineImage:
                'images/mainpagefoodimages/cuisinetype/misal pav.jpeg',
            cuisineCaption: 'Maharastrian',
          ),
          Cuisine(
            cuisineImage: 'images/mainpagefoodimages/cuisinetype/daalbati.jpg',
            cuisineCaption: 'Rajasthani',
          ),
          Cuisine(
            cuisineImage:
                'images/mainpagefoodimages/cuisinetype/north india.jpeg',
            cuisineCaption: 'North Indian',
          ),
          Cuisine(
            cuisineImage: 'images/mainpagefoodimages/cuisinetype/khaman1.jpg',
            cuisineCaption: 'Gujarati',
          ),
          Cuisine(
            cuisineImage: 'images/mainpagefoodimages/cuisinetype/non veg.jpeg',
            cuisineCaption: 'Non Vegeterian',
          ),
          Cuisine(
            cuisineImage: 'images/mainpagefoodimages/cuisinetype/paratha.jpeg',
            cuisineCaption: 'Paratha',
          ),
          Cuisine(
            cuisineImage:
                'images/mainpagefoodimages/cuisinetype/pav bhaji.jpeg',
            cuisineCaption: 'Snacks',
          ),
          Cuisine(
            cuisineImage: 'images/mainpagefoodimages/cuisinetype/kheer.jpeg',
            cuisineCaption: 'Dessert',
          ),
          Cuisine(
            cuisineImage: 'images/mainpagefoodimages/cuisinetype/chinese.jpeg',
            cuisineCaption: 'Chinese',
          ),
        ],
      ),
    );
  }
}

class Cuisine extends StatelessWidget {
  final String cuisineImage;
  final String cuisineCaption;

  Cuisine({this.cuisineImage, this.cuisineCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.topCenter,
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              cuisineImage,
              width: 50,
              height: 60.0,
            ),
            subtitle: Text(
              cuisineCaption,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
