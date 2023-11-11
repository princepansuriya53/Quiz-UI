import 'package:flutter/material.dart';

class CitySearch extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),
    );
  }

  final Topic = [
    "Education",
    "Games",
    "Back to school",
    "Food & drink",
    "Art & Gallery",
    "School",
  ];
  final recentSearch = [
    "Game",
    "education",
    "School",
    "Art",
    "Food",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
              showSuggestions(context);
            }
          },
          icon: const Icon(Icons.clear),
        ),
      ];
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
  Widget buildResults(BuildContext context) => Center(
        child: Column(
          children: [
            const Icon(Icons.adobe),
            const SizedBox(height: 45),
            Text(
              query,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 65,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = query.isEmpty
        ? recentSearch
        : Topic.where(
            (city) {
              final citylower = city.toLowerCase();
              final querylower = query.toLowerCase();
              return citylower.startsWith(querylower);
            },
          ).toList();
    return buildSuggestionsSuccess(suggestion);
  }

  Widget buildSuggestionsSuccess(List<String> suggestion) => ListView.builder(
        itemCount: suggestion.length,
        itemBuilder: (BuildContext context, index) {
          final suggestions = suggestion[index];
          return ListTile(
            onTap: () {
              query = suggestions;
              showResults(context);
            },
            leading: const Icon(Icons.adobe_outlined),
            title: Text(suggestions),
          );
        },
      );
}
