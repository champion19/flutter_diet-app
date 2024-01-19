import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
          CategoryModel(
            name: 'Salad',
            iconPath: iconPath,
            boxColor: boxColor
            )
            );

            categories.add(
          CategoryModel(
            name: 'cake ',
            iconPath: iconPath,
            boxColor: boxColor
            )
            );

            categories.add(
          CategoryModel(
            name: 'pie',
            iconPath: iconPath,
            boxColor: boxColor
            )
            );
            categories.add(
          CategoryModel(
            name: 'Smoothie',
            iconPath: iconPath,
            boxColor: boxColor
            )
            );

    return categories;
  }
}
