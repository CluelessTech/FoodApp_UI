import 'package:flutter/material.dart';

import '../shared/app_import.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Veggie tomato mix",
    "Fried chicken m.",
    "Egg and cucmber...",
    "Moi-moi and ekpa.",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var food in searchTerms) {
      if (food.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(food);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () => Navigator.pushNamed(context, AppRoutes.detailScreen),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var food in searchTerms) {
      if (food.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(food);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () => Navigator.pushNamed(context, AppRoutes.detailScreen),
        );
      },
    );
  }
}
