import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signin_task/screens/signin.dart';

class WelcomeClass extends StatelessWidget {
  const WelcomeClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Welcome to app'),
        ],
      ),
    );
  }
}
