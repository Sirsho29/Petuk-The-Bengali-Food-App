import 'package:bengali_food/FoodItems.dart';
import 'package:flutter/material.dart';

import './dummy.dart';

class CategoryFoodScreen extends StatelessWidget {
  static const routeName = '/category-foods-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryItem =
        Dummy_meals.where((meal) => meal.category == categoryId).toList();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Text(categoryTitle,style: TextStyle(color:Colors.black54),),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => FoodItem(
          title: categoryItem[index].title,
          imageUrl: categoryItem[index].imageUrl,
          isMustTry: categoryItem[index].isMustTry,
          isNonVeg: categoryItem[index].isNonVeg,
          isVeg: categoryItem[index].isVeg,
        ),
        itemCount: categoryItem.length,
      ),
    );
  }
}
