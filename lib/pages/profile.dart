import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar: AppBar(),
      body: const SizedBox(
        child: Center(
          child:Text('Profile'),
        ),
      ),
    );
  }
}
