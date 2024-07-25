import 'package:cine_quest_app/models/title_source.dart';

class TitleDetails {
  final int id;
  final String title;
  final String originalTitle;
  final String plotOverview;
  final String type;
  final int runtimeMinutes;
  final int year;
  final int? endYear;
  final DateTime releaseDate;
  final List<int> genres;
  final List<String> genreNames;
  final double userRating;
  final int criticScore;
  final String usRating;
  final Uri poster;
  final Uri backdrop;
  final String originalLanguage;
  final List<int> similarTitles;
  final List<int> networks;
  final List<String> networkNames;
  final Uri trailer;
  final Uri trailerThumbnail;
  final double relevancePercentile;
  final List<TitleSource> sources;

  TitleDetails({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.plotOverview,
    required this.type,
    required this.runtimeMinutes,
    required this.year,
    this.endYear,
    required this.releaseDate,
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

  factory TitleDetails.fromJson(Map<String, dynamic> json) {
    if (json
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
          "genres": final List<dynamic> genresIds,
          "genre_names": final List<dynamic> genreNames,
          "user_rating": final double userRating,
          "critic_score": final int criticScore,
          "us_rating": final String usRating,
          "poster": final String posterUri,
          "backdrop": final String backdropUri,
          "original_language": final String originalLanguage,
          "similar_titles": final List<dynamic> similarTitlesIds,
          "networks": final List<dynamic> networkIds,
          "network_names": final List<dynamic> networkNames,
          "trailer": final String trailerUri,
          "trailer_thumbnail": final String trailerThumbnailUri,
          "relevance_percentile": final double relevancePercentile,
          "sources": final List<dynamic> sources,
        } when DateTime.tryParse(releaseDate) != null) {
      return TitleDetails(
        id: id,
        title: title,
        originalTitle: originalTitle,
        plotOverview: plotOverview,
        type: type,
        runtimeMinutes: runtimeMinutes,
        year: year,
        endYear: endYear,
        releaseDate: DateTime.parse(releaseDate),
        genres: genresIds.map((item) => int.parse('$item')).toList(),
        genreNames: genreNames.map((item) => '$item').toList(),
        userRating: userRating,
        criticScore: criticScore,
        usRating: usRating,
        poster: Uri.parse(posterUri),
        backdrop: Uri.parse(backdropUri),
        originalLanguage: originalLanguage,
        similarTitles:
            similarTitlesIds.map((item) => int.parse('$item')).toList(),
        networks: networkIds.map((item) => int.parse('$item')).toList(),
        networkNames: networkNames.map((item) => '$item').toList(),
        trailer: Uri.parse(trailerUri),
        trailerThumbnail: Uri.parse(trailerThumbnailUri),
        relevancePercentile: relevancePercentile,
        sources: sources
            .map((item) => TitleSource.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    }
    throw ArgumentError.value(json);
  }
}
