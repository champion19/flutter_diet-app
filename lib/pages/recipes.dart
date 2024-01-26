import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  const Recipes({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar: AppBar(),
      body: const SizedBox(
        child: Center(
          child:Text('recipes'),
        ),
      ),
    );
  }
}
