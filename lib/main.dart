import 'package:bengali_food/filter_screen.dart';
import 'package:bengali_food/home_screen.dart';
import 'package:bengali_food/image_enlarge_screen.dart';

import './CategoriesScreen.dart';
import 'package:flutter/material.dart';
import './CategoryFoodScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BengaliFoods.com',
      home:HomeScreen(),
      routes: {
        CategoriesScreen.routeName: (ctx)=>CategoriesScreen(),
        CategoryFoodScreen.routeName : (ctx) => CategoryFoodScreen(),
        ImageEnlargeScreen.routeName: (ctx) => ImageEnlargeScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
        },
    );
  }
}