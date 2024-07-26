import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    print(query);
    return const Placeholder();
  }
}
