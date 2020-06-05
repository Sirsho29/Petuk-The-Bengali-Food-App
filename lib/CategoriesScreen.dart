import 'package:bengali_food/drawer_screen.dart';
import 'package:bengali_food/filter_screen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import './category_items.dart';
import './dummy.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = './category_screen';

  final List<String> images = [
    'assets/foods/26.jpg',
    'assets/foods/19.jpg',
    'assets/foods/1.jpg',
    'assets/foods/34.jpg',
    'assets/foods/40.jpg',
    'assets/foods/11.jpg',
    'assets/foods/14.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          actionsIconTheme: IconThemeData(color: Colors.black54),
          actions: <Widget>[
            RaisedButton(
              child: Icon(
                Icons.filter_list,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
              },
            ),
            SizedBox(width: 20),
          ],
          iconTheme: IconThemeData(color: Colors.black54),
          title: Text(
            'পেটুক',
            style: TextStyle(
                fontFamily: 'Cholontika', fontSize: 40, color: Colors.black54),
          ),
          backgroundColor: Colors.white,
        ),
        drawer: DrawerScreen(),
        body: ListView(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 300,
            width: double.infinity,
            child: Swiper(
              itemBuilder: (BuildContext context, index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
              itemCount: images.length,
              autoplay: true,
              pagination: SwiperPagination(alignment: Alignment.bottomCenter),
              itemHeight: 200,
              itemWidth: double.infinity,
              scrollDirection: Axis.horizontal,
              //viewportFraction: 0.8,
              //scale: 0.9,
              controller: SwiperController(),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            elevation: 1,
            child: Container(
              color: Colors.white,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: Dummy1.map((catData) => Center(
                    child: CategoryItems(
                        catData.title, catData.id, catData.color))).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            elevation: 1,
            child: Container(
              //padding: EdgeInsets.only(left: 10,right: 10),
              color: Colors.white,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: Dummy2.map((catData) => Center(
                    child: CategoryItems(
                        catData.title, catData.id, catData.color))).toList(),
              ),
            ),
          ),
        ]));
  }
}
