import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List searchTerms = [];
  CustomSearchDelegate(List s) {
    searchTerms = s;
  }

  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List matchQuery = [];
    for (var brd in searchTerms) {
      if (brd.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(brd);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];

          return ListTile(
            onTap: () {},
            title: Text(result.name),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List matchQuery = [];
    for (var brd in searchTerms) {
      if (brd.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(brd);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];

        return ListTile(
          onTap: () {},
          title: Text(result.name),
        );
      },
    );
  }
}
