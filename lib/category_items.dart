import 'package:bengali_food/CategoryFoodScreen.dart';
import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  CategoryItems(this.title, this.id, this.color);

  void selectCategory(context) {
    Navigator.of(context).pushNamed(
      CategoryFoodScreen.routeName,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 120,
      padding: EdgeInsets.all(5),
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        elevation: 3,
        child: InkWell(
          onTap: () => selectCategory(context),
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    color.withOpacity(0.7),
                    color,
                  ],
                  focalRadius: 100,
                  radius: 30,
                ),
                borderRadius: BorderRadius.circular(15),
              )),
        ),
      ),
    );
  }
}
