import 'package:flutter/material.dart';
import 'package:trello_flutter/utils/config.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            logo,
            width: 30,
            height: 30,
          )
        ],
      )),
    );
  }
}
