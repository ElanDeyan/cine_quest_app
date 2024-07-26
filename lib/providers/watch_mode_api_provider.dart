import 'dart:convert';

import 'package:cine_quest_app/types/dict.dart';
import 'package:cine_quest_app/types/json_map.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final class WatchModeApiProvider extends ChangeNotifier {
  WatchModeApiProvider({required String apiKey}) : _apiKey = apiKey;

  final String _apiKey;

  static const _baseUrl = 'https://api.watchmode.com/v1';

  Dio get _client => Dio(BaseOptions(baseUrl: _baseUrl));

  @override
  Future<void> refresh() {
    throw UnimplementedError();
  }

  // @override
  // Future<List<JsonMap>> allTitlesPaginated({
  //   int page = 1,
  //   int manyPerPage = 50,
  //   SortedByCriteria sortedBy = SortedByCriteria.relevanceDesc,
  // }) async {
  //   try {
  //     final dataAsJson = jsonDecode(allTitlesPaginatedResponse);

  //     if (dataAsJson case {"titles": final List<dynamic> titles}) {
  //       return titles.map((item) => item as JsonMap).toList();
  //     }

  //     debugPrint('Some error occurred');
  //     return const <JsonMap>[];
  //     // final response = await http.get(
  //     //   Uri.parse(
  //     //     '$_baseUrl/list-titles/?apiKey=$_apiKey&page=$page&limit=$manyPerPage',
  //     //   ),
  //     // );

  //     // if (response.statusCode == 200) {
  //     //   final bodyAsJson =
  //     //       jsonDecode(utf8.decode(response.bodyBytes)) as JsonMap;

  //     //   if (bodyAsJson case {"titles": final List<dynamic> titles}) {
  //     //     return titles
  //     //         .map((item) => JsonMap(item as Map<String, dynamic>))
  //     //         .toList();
  //     //   }
  //     // }

  //     // return <JsonMap>[JsonMap.empty()];
  //   } finally {
  //     notifyListeners();
  //   }
  // }

  Future<Dict<List<JsonMap>>> autoCompleteSearch({
    int type = 2,
    required String query,
  }) async {
    try {
      final response = await _client.get(
        '/autocomplete-search/?apiKey=$_apiKey&search_type=$type&search_value=$query',
      );

      if (response.statusCode == 200) {
        final bodyAsJson =
            jsonDecode(utf8.decode(response.data.toString().codeUnits))
                as JsonMap;

        if (bodyAsJson case {"results": final List<dynamic> results}) {
          return Dict({
            "results": results
                .map((result) => JsonMap(result as Dict<dynamic>))
                .toList(),
          });
        }
      }

      return Dict({"results": []});
    } finally {
      notifyListeners();
    }
  }

  // @override
  // Future<List<Genre>> get genres async {
  //   try {
  //     final dataAsJson = jsonDecode(genresResponseString);

  //     if (dataAsJson case final List<dynamic> genres) {
  //       return genres.map((item) => Genre.fromJson(item as JsonMap)).toList();
  //     }
  //     // final response =
  //     //     await http.get(Uri.parse('$_baseUrl/genres/?apiKey=$_apiKey'));
  //     // if (response.statusCode == 200) {
  //     //   final bodyAsJson = jsonDecode(utf8.decode(response.bodyBytes));

  //     //   if (bodyAsJson case final List<Map<String, dynamic>> list) {
  //     //     return list.map((item) => Genre.fromJson(item as JsonMap)).toList();
  //     //   }
  //     // }

  //     debugPrint('Some error occurred');
  //     return const <Genre>[];
  //   } finally {
  //     notifyListeners();
  //   }
  // }

  // @override
  // Future<List<Source>> get sources async {
  //   try {
  //     final dataAsJson = jsonDecode(sourcesResponseString);

  //     if (dataAsJson case final List<dynamic> sources) {
  //       return sources.map((item) => Source.fromJson(item as JsonMap)).toList();
  //     }
  //     // final response =
  //     //     await http.get(Uri.parse('$_baseUrl/sources/?apiKey=$_apiKey'));
  //     // if (response.statusCode == 200) {
  //     //   final bodyAsJson = jsonDecode(utf8.decode(response.bodyBytes));

  //     //   if (bodyAsJson case final List<Map<String, dynamic>> list) {
  //     //     return list.map((item) => Source.fromJson(item as JsonMap)).toList();
  //     //   }
  //     // }

  //     debugPrint('Some error occurred');
  //     return const <Source>[];
  //   } finally {
  //     notifyListeners();
  //   }
  // }

  // @override
  // Future<TitleDetails> titleDetails(int id) async {
  //   try {
  //     final dataAsJson = jsonDecode(titleDetailsResponse);

  //     return TitleDetails.fromJson(dataAsJson as JsonMap);
  //     // final response = await http
  //     //     .get(Uri.parse('$_baseUrl/title/$id/details/?apiKey=$_apiKey'));
  //     // if (response.statusCode == 200) {
  //     //   final bodyAsJson =
  //     //       jsonDecode(utf8.decode(response.bodyBytes)) as JsonMap;

  //     //   return TitleDetails.fromJson(bodyAsJson);
  //     // } else {
  //     //   throw Exception();
  //     // }
  //   } finally {
  //     notifyListeners();
  //   }
  // }

  // @override
  // Future<List<TitleSource>> titleSources(int id) async {
  //   try {
  //     final dataAsJson = jsonDecode(titleSourcesResponse) as List<dynamic>;

  //     return <TitleSource>[
  //       for (final item in dataAsJson) TitleSource.fromJson(item as JsonMap),
  //     ];
  //     // final response = await http
  //     //     .get(Uri.parse('$_baseUrl/title/$id/sources/?apiKey=$_apiKey'));
  //     // if (response.statusCode == 200) {
  //     //   final bodyAsJson =
  //     //       jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;

  //     //   final sourcesAsListOfMap = bodyAsJson.cast<JsonMap>();

  //     //   return <TitleSource>[
  //     //     for (final sourceMap in sourcesAsListOfMap)
  //     //       TitleSource.fromJson(sourceMap),
  //     //   ];
  //     // }
  //     return const <TitleSource>[];
  //   } finally {
  //     notifyListeners();
  //   }
  // }
}
