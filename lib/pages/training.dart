import 'package:flutter/material.dart';

class Training extends StatelessWidget {
  const Training({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar: AppBar(),
      body: const SizedBox(
        child: Center(
          child:Text('Training'),
        ),
      ),
    );
  }
}
