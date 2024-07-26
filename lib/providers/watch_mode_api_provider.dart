import 'dart:convert';

import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/models/title_source.dart';
import 'package:cine_quest_app/types/dict.dart';
import 'package:cine_quest_app/types/json_map.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final class WatchModeApiProvider extends ChangeNotifier {
  WatchModeApiProvider({required String apiKey}) : _apiKey = apiKey;

  final String _apiKey;

  static const _baseUrl = 'https://api.watchmode.com/v1';

  Dio get _client => Dio(
        BaseOptions(
          baseUrl: _baseUrl,
          responseDecoder: (responseBytes, options, responseBody) =>
              utf8.decode(responseBytes),
        ),
      );

  Future<Dict<List<JsonMap>>> autoCompleteSearch({
    int type = 2,
    required String query,
  }) async {
    final response = await _client.get<String>(
      '/autocomplete-search/?apiKey=$_apiKey&search_type=$type&search_value=$query',
    );

    if (response.statusCode == 200) {
      final bodyAsJson = jsonDecode(response.data!) as JsonMap;
      if (bodyAsJson case {"results": final List<dynamic> results}) {
        return Dict({
          "results": results
              .map((result) => JsonMap(result as Dict<dynamic>))
              .toList(),
        });
      }
    }

    return Dict({"results": []});
  }

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

  Future<TitleDetails> titleDetails(int id) async {
    final response =
        await _client.get<String>('/title/$id/details/?apiKey=$_apiKey');
    if (response.statusCode == 200) {
      final bodyAsJson = jsonDecode(response.data!) as JsonMap;

      return TitleDetails.fromMap(bodyAsJson);
    } else {
      throw Exception();
    }
  }

  Future<List<TitleSource>> titleSources(int id) async {
    final response =
        await _client.get<String>('/title/$id/sources/?apiKey=$_apiKey');
    if (response.statusCode == 200) {
      final bodyAsList = jsonDecode(response.data!) as List<dynamic>;
      final sourcesAsListOfMap = bodyAsList.cast<JsonMap>();

      return <TitleSource>[
        for (final sourceMap in sourcesAsListOfMap)
          TitleSource.fromMap(sourceMap),
      ];
    }
    return const <TitleSource>[];
  }
}
