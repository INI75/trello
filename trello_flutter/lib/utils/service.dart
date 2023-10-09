import 'package:flutter/material.dart';
import 'package:trello_flutter/features/home/presentation/customSearch.dart';

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

  search(BuildContext context, List searchLiist) {
    showSearch(context: context, delegate: CustomSearchDelegate(searchLiist));
  }
}
