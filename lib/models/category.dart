import 'package:flutter/material.dart';

enum Categories {
  dairy,
  fruit,
  meat,
  vegetables,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other,
}

class Category {
  const Category(this.categoryName, this.color);

  final String categoryName;
  final Color color;
}
