import 'package:flutter/material.dart';
import 'package:flutter_diet/pages/recipe_screen.dart';
import 'package:flutter_svg/svg.dart';

class RecipeModel {
  String name;
  String iconPath;
  Color boxColor;
  String ingredients;
  String duration;
  String serving;

  RecipeModel(
      {required this.name,
      required this.iconPath,
      required this.boxColor,
      required this.ingredients,
      required this.duration,
      required this.serving});

  static List<RecipeModel> getRecipes() {
    List<RecipeModel> recipes = [
      RecipeModel(
        name: 'Pancake de moras',
        iconPath: 'assets/icons/blueberry-pancake.svg',
        boxColor: const Color(0xff9DCEFF),
        ingredients: "",
        duration: "",
        serving: "",
      ),
      
    ];
    return recipes;
  }
}
