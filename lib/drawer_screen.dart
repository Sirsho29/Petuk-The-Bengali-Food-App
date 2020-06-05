import 'package:bengali_food/CategoriesScreen.dart';
import 'package:flutter/material.dart';

import 'filter_screen.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(color: Colors.lightGreenAccent, height: 20),
          Container(
            color: Colors.lightGreenAccent,
            child: ListTile(
              subtitle: Text(
                'বাঙালি খাবারের পীঠস্থান',
                style: TextStyle(
                    fontFamily: 'Cholontika',
                    fontSize: 15,
                    color: Colors.black54),
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 55,
                child: Image.asset(
                  'assets/logo/1.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                'পেটুক',
                style: TextStyle(
                    fontFamily: 'Cholontika',
                    fontSize: 45,
                    color: Colors.black87),
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            trailing: Icon(Icons.home),
            onTap: (){Navigator.of(context).pushNamed(CategoriesScreen.routeName);},
          ),
          ListTile(
            title: Text('Filters'),
            trailing: Icon(Icons.filter_list),
            onTap: (){
               Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
            },
          ),
          ListTile(
            title: Text('Favourites'),
            trailing: Icon(Icons.favorite_border),
            onTap: (){},
          ), 
        ],
      ),
    );
  }
}
