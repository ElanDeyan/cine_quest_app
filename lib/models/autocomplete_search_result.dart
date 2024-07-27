import 'dart:convert';

import 'package:cine_quest_app/models/search_result.dart';

class AutoCompleteSearchResult {
  final List<SearchResult> results;

  AutoCompleteSearchResult({required this.results});

  factory AutoCompleteSearchResult.fromMap(Map<String, dynamic> json) {
    final list = json['results'] as List;
    final List<SearchResult> resultList =
        list.map((i) => SearchResult.fromJson(jsonEncode(i))).toList();

    return AutoCompleteSearchResult(
      results: resultList,
    );
  }
}
