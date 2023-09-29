import 'package:flutter/material.dart';
import 'package:trello_flutter/utils/color.dart';
import 'package:trello_flutter/utils/config.dart';
import 'package:trello_flutter/utils/constant.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              logo,
              width: 30,
              height: 30,
            ),
          ),
          Image.asset(
            landingImage,
            height: media.height * 0.4,
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              headLine,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            width: media.width * .8,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Sign up'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            width: media.width * .8,
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: brandCOlor)),
              onPressed: () {},
              child: const Text('Sign up'),
            ),
          ),
          const Text(
            terms,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            contract,
            style: TextStyle(decoration: TextDecoration.underline),
          )
        ],
      )),
    );
  }
}
