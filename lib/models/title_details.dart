import 'dart:convert';

import 'package:cine_quest_app/models/title_source.dart';
import 'package:hive/hive.dart';

part 'title_details.g.dart';

@HiveType(typeId: 1)
class TitleDetails {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String originalTitle;

  @HiveField(3)
  final String plotOverview;

  @HiveField(4)
  final String type;

  @HiveField(5)
  final int runtimeMinutes;

  @HiveField(6)
  final int? year;

  @HiveField(7)
  final int? endYear;

  @HiveField(8)
  final String? releaseDate;

  @HiveField(9)
  final String? imdbId;

  @HiveField(10)
  final int? tmdbId;

  @HiveField(11)
  final String? tmdbType;

  @HiveField(12)
  final List<int> genres;

  @HiveField(13)
  final List<String> genreNames;

  @HiveField(14)
  final double userRating;

  @HiveField(15)
  final int criticScore;

  @HiveField(16)
  final String usRating;

  @HiveField(17)
  final String poster;

  @HiveField(18)
  final String backdrop;

  @HiveField(19)
  final String originalLanguage;

  @HiveField(20)
  final List<int> similarTitles;

  @HiveField(21)
  final List<int> networks;

  @HiveField(22)
  final List<String> networkNames;

  @HiveField(23)
  final String trailer;

  @HiveField(24)
  final String trailerThumbnail;

  @HiveField(25)
  final double relevancePercentile;

  @HiveField(26)
  final List<TitleSource> sources;

  TitleDetails({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.plotOverview,
    required this.type,
    required this.runtimeMinutes,
    required this.year,
    required this.endYear,
    required this.releaseDate,
    required this.imdbId,
    required this.tmdbId,
    required this.tmdbType,
    required this.genres,
    required this.genreNames,
    required this.userRating,
    required this.criticScore,
    required this.usRating,
    required this.poster,
    required this.backdrop,
    required this.originalLanguage,
    required this.similarTitles,
    required this.networks,
    required this.networkNames,
    required this.trailer,
    required this.trailerThumbnail,
    required this.relevancePercentile,
    required this.sources,
  });

  TitleDetails copyWith({
    int? id,
    String? title,
    String? originalTitle,
    String? plotOverview,
    String? type,
    int? runtimeMinutes,
    int? year,
    int? endYear,
    String? releaseDate,
    String? imdbId,
    int? tmdbId,
    String? tmdbType,
    List<int>? genres,
    List<String>? genreNames,
    double? userRating,
    int? criticScore,
    String? usRating,
    String? poster,
    String? backdrop,
    String? originalLanguage,
    List<int>? similarTitles,
    List<int>? networks,
    List<String>? networkNames,
    String? trailer,
    String? trailerThumbnail,
    double? relevancePercentile,
    List<TitleSource>? sources,
  }) {
    return TitleDetails(
      id: id ?? this.id,
      title: title ?? this.title,
      originalTitle: originalTitle ?? this.originalTitle,
      plotOverview: plotOverview ?? this.plotOverview,
      type: type ?? this.type,
      runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
      year: year ?? this.year,
      endYear: endYear ?? this.endYear,
      releaseDate: releaseDate ?? this.releaseDate,
      imdbId: imdbId ?? this.imdbId,
      tmdbId: tmdbId ?? this.tmdbId,
      tmdbType: tmdbType ?? this.tmdbType,
      genres: genres ?? this.genres,
      genreNames: genreNames ?? this.genreNames,
      userRating: userRating ?? this.userRating,
      criticScore: criticScore ?? this.criticScore,
      usRating: usRating ?? this.usRating,
      poster: poster ?? this.poster,
      backdrop: backdrop ?? this.backdrop,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      similarTitles: similarTitles ?? this.similarTitles,
      networks: networks ?? this.networks,
      networkNames: networkNames ?? this.networkNames,
      trailer: trailer ?? this.trailer,
      trailerThumbnail: trailerThumbnail ?? this.trailerThumbnail,
      relevancePercentile: relevancePercentile ?? this.relevancePercentile,
      sources: sources ?? this.sources,
    );
  }

  @override
  String toString() {
    return 'TitleDetails(id: $id, title: $title, originalTitle: $originalTitle, plotOverview: $plotOverview, type: $type, runtimeMinutes: $runtimeMinutes, year: $year, endYear: $endYear, releaseDate: $releaseDate, imdbId: $imdbId, tmdbId: $tmdbId, tmdbType: $tmdbType, genres: $genres, genreNames: $genreNames, userRating: $userRating, criticScore: $criticScore, usRating: $usRating, poster: $poster, backdrop: $backdrop, originalLanguage: $originalLanguage, similarTitles: $similarTitles, networks: $networks, networkNames: $networkNames, trailer: $trailer, trailerThumbnail: $trailerThumbnail, relevancePercentile: $relevancePercentile, sources: $sources)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'originalTitle': originalTitle,
      'plotOverview': plotOverview,
      'type': type,
      'runtimeMinutes': runtimeMinutes,
      'year': year,
      'endYear': endYear,
      'releaseDate': releaseDate,
      'imdbId': imdbId,
      'tmdbId': tmdbId,
      'tmdbType': tmdbType,
      'genres': genres,
      'genreNames': genreNames,
      'userRating': userRating,
      'criticScore': criticScore,
      'usRating': usRating,
      'poster': poster,
      'backdrop': backdrop,
      'originalLanguage': originalLanguage,
      'similarTitles': similarTitles,
      'networks': networks,
      'networkNames': networkNames,
      'trailer': trailer,
      'trailerThumbnail': trailerThumbnail,
      'relevancePercentile': relevancePercentile,
      'sources': sources.map((x) => x.toMap()).toList(),
    };
  }

  factory TitleDetails.fromMap(Map<String, dynamic> map) {
    if (map
        case {
          "id": final int id,
          "title": final String title,
          "original_title": final String originalTitle,
          "plot_overview": final String plotOverview,
          "type": final String type,
          "runtime_minutes": final int runtimeMinutes,
          "year": final int year,
          "end_year": final int? endYear,
          "release_date": final String releaseDate,
          "imdb_id": final String imdbId,
          "tmdb_id": final int tmdbId,
          "tmdb_type": final String tmdbType,
          "genres": final List<dynamic> genresId,
          "genre_names": final List<dynamic> genreNames,
          "user_rating": final double userRating,
          "critic_score": final int criticScore,
          "us_rating": final String usRating,
          "poster": final String poster,
          "backdrop": final String backdrop,
          "original_language": final String originalLanguage,
          "similar_titles": final List<dynamic> similarTitlesIds,
          "networks": final List<dynamic> networksIds,
          "network_names": final List<dynamic> networkNames,
          "trailer": final String trailer,
          "trailer_thumbnail": final String trailerThumbnail,
          "relevance_percentile": final double relevancePercentile,
          "sources": final List<dynamic> sources,
        }) {
      return TitleDetails(
        id: id,
        title: title,
        originalTitle: originalTitle,
        plotOverview: plotOverview,
        type: type,
        runtimeMinutes: runtimeMinutes,
        year: year,
        endYear: endYear,
        releaseDate: releaseDate,
        imdbId: imdbId,
        tmdbId: tmdbId,
        tmdbType: tmdbType,
        genres: genresId.map((item) => int.parse('$item')).toList(),
        genreNames: genreNames.map((item) => '$item').toList(),
        userRating: userRating,
        criticScore: criticScore,
        usRating: usRating,
        poster: poster,
        backdrop: backdrop,
        originalLanguage: originalLanguage,
        similarTitles:
            similarTitlesIds.map((item) => int.parse('$item')).toList(),
        networks: networksIds.map((item) => int.parse('$item')).toList(),
        networkNames: networkNames.map((item) => '$item').toList(),
        trailer: trailer,
        trailerThumbnail: trailerThumbnail,
        relevancePercentile: relevancePercentile,
        sources: sources
            .map((item) => TitleSource.fromMap(item as Map<String, dynamic>))
            .toList(),
      );
    }

    throw const FormatException();
  }

  String toJson() => json.encode(toMap());

  factory TitleDetails.fromJson(String source) =>
      TitleDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
