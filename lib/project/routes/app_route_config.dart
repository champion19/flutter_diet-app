import 'package:flutter/material.dart';
import 'package:flutter_diet/pages/Home.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_diet/pages/profile.dart';
import 'package:flutter_diet/pages/recipes.dart';
import 'package:flutter_diet/pages/training.dart';
import 'package:flutter_diet/pages/diet.dart';

class MyAppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      name: 'home',
      path: '/home',
      pageBuilder: (context, state) {
        return MaterialPage(child: HomePage());
      },
    ),
    GoRoute(
      name: 'diet',
      path: '/diet',
      pageBuilder: (context, state) {
        return const MaterialPage(child: Diet());
      },
    ),
    GoRoute(
      name: 'profile',
      path: '/profile',
      pageBuilder: (context, state) {
        return const MaterialPage(child: Profile());
      },
    ),
    GoRoute(
      name: 'recipes',
      path: '/recipes',
      pageBuilder: (context, state) {
        return const MaterialPage(child: Recipes());
      },
    ),
    GoRoute(
      name: 'training',
      path: '/training',
      pageBuilder: (context, state) {
        return const MaterialPage(child: Training());
      },
    ),
  ]);
}
