import 'package:flutter/material.dart';

import './image_enlarge_screen.dart';

class FoodItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isMustTry;
  final bool isVeg;
  final bool isNonVeg;

  FoodItem({
    this.title,
    this.imageUrl,
    this.isMustTry = false,
    this.isVeg = false,
    this.isNonVeg = false,
  });

  Widget mustTry() {
    if (isMustTry)
      return Row(
        children: <Widget>[
          Card(
              color: Colors.lightGreen,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.stars,
                color: Colors.white,
                size: 22,
              )),
          Text('Must Try!!'),
        ],
      );
    else
      return Container(
        height: 0,
        width: 0,
      );
  }

  Widget veg() {
    if (isVeg)
      return Row(
        children: <Widget>[
          Container(
            height: 30,
            width: 30,
            child: Card(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.green, width: 3, style: BorderStyle.solid),
            ),
          ),
          Text(
            ' Veg',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );
    else
      return Container(
        height: 0,
        width: 0,
      );
  }

  Widget nonVeg() {
    if (isNonVeg)
      return Row(
        children: <Widget>[
          Container(
            height: 30,
            width: 30,
            child: Card(
              color: Colors.brown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.brown, width: 3, style: BorderStyle.solid),
            ),
          ),
          Text(
            ' Non-Veg',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );
    else
      return Container(
        height: 0,
        width: 0,
      );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ImageEnlargeScreen.routeName,
            arguments: {'imageUrl': imageUrl,'title':title});
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(imageUrl,
                      height: 250, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width: 200,
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  mustTry(),
                  veg(),
                  nonVeg(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
