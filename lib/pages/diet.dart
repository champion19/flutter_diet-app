import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar: AppBar(),
      body: const SizedBox(
        child: Center(
          child:Text('Diet'),
        ),
      ),
    );
  }
}
