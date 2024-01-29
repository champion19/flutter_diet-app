import 'package:flutter/material.dart';
import 'package:flutter_diet/pages/Home.dart';
import 'package:flutter_diet/pages/error_page.dart';
import 'package:flutter_diet/project/routes/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_diet/pages/profile.dart';
import 'package:flutter_diet/pages/recipes.dart';
import 'package:flutter_diet/pages/training.dart';
import 'package:flutter_diet/pages/diet.dart';
import 'package:flutter_diet/pages/category.dart';

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
        name: Routes.diet,
        path: Routes.diet,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Diet());
        },
      ),
      GoRoute(
        name: Routes.profile,
        path: Routes.profile,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Profile());
        },
      ),
      GoRoute(
        name: Routes.recipes,
        path: Routes.recipes,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Recipes());
        },
      ),
      GoRoute(
        name: Routes.training,
        path: Routes.training,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Training());
        },
      ),
       GoRoute(
        name: Routes.category,
        path: Routes.training,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Category());
        },
      )
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );
}
