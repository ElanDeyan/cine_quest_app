import 'dart:convert';

class SearchResult {
  final String name;
  final double relevance;
  final String type;
  final int id;
  final int year;
  final String resultType;
  final String? imdbId;
  final int? tmdbId;
  final String? tmdbType;
  final String imageUrl;

  SearchResult({
    required this.name,
    required this.relevance,
    required this.type,
    required this.id,
    required this.year,
    required this.resultType,
    required this.imdbId,
    required this.tmdbId,
    required this.tmdbType,
    required this.imageUrl,
  });

  factory SearchResult.fromMap(Map<String, dynamic> json) {
    if (json
        case {
          "name": final String name,
          "relevance": final double relevance,
          "type": final String type,
          "id": final int id,
          "year": final int year,
          "result_type": final String resultType,
          "imdb_id": final String? imdbId,
          "tmdb_id": final int? tmdbId,
          "tmdb_type": final String? tmdbType,
          "image_url": final String imageUrl,
        }) {
      return SearchResult(
        name: name,
        relevance: relevance,
        type: type,
        id: id,
        year: year,
        resultType: resultType,
        imdbId: imdbId,
        tmdbId: tmdbId,
        tmdbType: tmdbType,
        imageUrl: imageUrl,
      );
    }

    throw const FormatException();
  }

  @override
  String toString() {
    return 'SearchResult(name: $name, relevance: $relevance, type: $type, id: $id, year: $year, resultType: $resultType, imdbId: $imdbId, tmdbId: $tmdbId, tmdbType: $tmdbType, imageUrl: $imageUrl)';
  }

  SearchResult copyWith({
    String? name,
    double? relevance,
    String? type,
    int? id,
    int? year,
    String? resultType,
    String? imdbId,
    int? tmdbId,
    String? tmdbType,
    String? imageUrl,
  }) {
    return SearchResult(
      name: name ?? this.name,
      relevance: relevance ?? this.relevance,
      type: type ?? this.type,
      id: id ?? this.id,
      year: year ?? this.year,
      resultType: resultType ?? this.resultType,
      imdbId: imdbId ?? this.imdbId,
      tmdbId: tmdbId ?? this.tmdbId,
      tmdbType: tmdbType ?? this.tmdbType,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'relevance': relevance,
      'type': type,
      'id': id,
      'year': year,
      'result_type': resultType,
      'imdb_id': imdbId,
      'tmdb_id': tmdbId,
      'tmdb_type': tmdbType,
      'image_url': imageUrl,
    };
  }

  String toJson() => json.encode(toMap());

  factory SearchResult.fromJson(String source) =>
      SearchResult.fromMap(json.decode(source) as Map<String, dynamic>);
}
