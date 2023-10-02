import 'package:flutter/material.dart';

mixin Service {
  signUp(BuildContext context) {
    if (context.mounted) {
      Navigator.pushNamed(context, '/home');
    }
  }

  logIn(BuildContext context) {
    if (context.mounted) {
      Navigator.pushNamed(context, '/home');
    }
  }

  search(BuildContext context) {
    
  }
}
