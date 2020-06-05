import 'dart:math';

import 'package:bengali_food/CategoriesScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  AnimationController rotationController;
  Animation animation;
  Animation animationText;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 2,
      ),
    );

    rotationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
      upperBound: pi * 2
      );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.decelerate,
    );

    animationText = CurvedAnimation(
      parent: rotationController, 
      curve: Curves.easeInCirc,);

    controller.forward();
    rotationController.forward();

    rotationController.addListener((){
      setState((){});
    });

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

@override
  void dispose() {
    controller.dispose();
    rotationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.black87,
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(CategoriesScreen.routeName);
          },
          label: Text(
            'See Categories',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.arrow_forward_ios),
        ),
        backgroundColor: Colors.black87,
        body: Column(
          children: [
            SizedBox(height: 70,),
            RotationTransition(
              turns: Tween(begin: 0.0, end: 0.318).animate(rotationController),
                          child: Text(
                  'পেটুক',
                  style: TextStyle(
                      fontFamily: 'Cholontika',
                      fontSize: controller.value * 100,
                      color: Colors.white.withOpacity(controller.value),
                )),
            ),
              SizedBox(height:80),
            Center(
              child: Container(
                  color: Colors.black87,
                  height: animation.value * 300,
                  width: animation.value * 300,
                  child: Image.asset(
                    'assets/logo/1.png',
                    fit: BoxFit.fill,
                  )),
            ),
          ],
        ));
  }
}
