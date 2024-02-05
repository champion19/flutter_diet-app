import 'package:flutter/material.dart';
import 'package:flutter_diet/pages/home_screen.dart';
import 'package:flutter_diet/pages/error_page.dart';
import 'package:flutter_diet/pages/category_screen.dart';
import 'package:flutter_diet/pages/recipe_screen.dart';
import 'package:flutter_diet/project/routes/routes.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        name: Routes.home,
        path: Routes.home,
        pageBuilder: (context, state) {
          return MaterialPage(child: HomePage());
        },
      ),
      GoRoute(
        name: Routes.category,
        path: Routes.category,
        builder: (context, state) => CategoryScreen(),
      ),
      GoRoute(
        name: Routes.recipes,
        path: Routes.recipes,
        builder: (context, state) =>  RecipeScreen(),
      )
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );
}
