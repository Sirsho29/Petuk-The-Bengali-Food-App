import 'package:flutter/material.dart';

class Meal{
  final String title;
  final String imageUrl;
  final String id;
  final String category;
  final bool isVeg;
  final bool isNonVeg;
  final bool isMustTry;


const Meal({
  @required this.title,
  @required this.imageUrl,
  @required this.id,
  @required this.category,
  this.isVeg,
  this.isNonVeg,
  this.isMustTry,
});
}