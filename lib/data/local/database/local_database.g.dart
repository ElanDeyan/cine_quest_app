// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title =
      GeneratedColumn<String>('title', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _originalTitleMeta =
      const VerificationMeta('originalTitle');
  @override
  late final GeneratedColumn<String> originalTitle =
      GeneratedColumn<String>('original_title', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _plotOverviewMeta =
      const VerificationMeta('plotOverview');
  @override
  late final GeneratedColumn<String> plotOverview =
      GeneratedColumn<String>('plot_overview', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type =
      GeneratedColumn<String>('type', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _runtimeMinutesMeta =
      const VerificationMeta('runtimeMinutes');
  @override
  late final GeneratedColumn<int> runtimeMinutes = GeneratedColumn<int>(
      'runtime_minutes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _endYearMeta =
      const VerificationMeta('endYear');
  @override
  late final GeneratedColumn<int> endYear = GeneratedColumn<int>(
      'end_year', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  @override
  late final GeneratedColumn<DateTime> releaseDate = GeneratedColumn<DateTime>(
      'release_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _genresMeta = const VerificationMeta('genres');
  @override
  late final GeneratedColumn<String> genres =
      GeneratedColumn<String>('genres', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _genreNamesMeta =
      const VerificationMeta('genreNames');
  @override
  late final GeneratedColumn<String> genreNames =
      GeneratedColumn<String>('genre_names', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _userRatingMeta =
      const VerificationMeta('userRating');
  @override
  late final GeneratedColumn<double> userRating = GeneratedColumn<double>(
      'user_rating', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _criticScoreMeta =
      const VerificationMeta('criticScore');
  @override
  late final GeneratedColumn<int> criticScore = GeneratedColumn<int>(
      'critic_score', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _usRatingMeta =
      const VerificationMeta('usRating');
  @override
  late final GeneratedColumn<String> usRating =
      GeneratedColumn<String>('us_rating', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _posterMeta = const VerificationMeta('poster');
  @override
  late final GeneratedColumn<String> poster =
      GeneratedColumn<String>('poster', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _backdropMeta =
      const VerificationMeta('backdrop');
  @override
  late final GeneratedColumn<String> backdrop =
      GeneratedColumn<String>('backdrop', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _originalLanguageMeta =
      const VerificationMeta('originalLanguage');
  @override
  late final GeneratedColumn<String> originalLanguage =
      GeneratedColumn<String>('original_language', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _similarTitlesMeta =
      const VerificationMeta('similarTitles');
  @override
  late final GeneratedColumn<String> similarTitles = GeneratedColumn<String>(
      'similar_titles', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _networksMeta =
      const VerificationMeta('networks');
  @override
  late final GeneratedColumn<String> networks = GeneratedColumn<String>(
      'networks', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _networkNamesMeta =
      const VerificationMeta('networkNames');
  @override
  late final GeneratedColumn<String> networkNames = GeneratedColumn<String>(
      'network_names', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _trailerMeta =
      const VerificationMeta('trailer');
  @override
  late final GeneratedColumn<String> trailer =
      GeneratedColumn<String>('trailer', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _trailerThumbnailMeta =
      const VerificationMeta('trailerThumbnail');
  @override
  late final GeneratedColumn<String> trailerThumbnail =
      GeneratedColumn<String>('trailer_thumbnail', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _relevancePercentileMeta =
      const VerificationMeta('relevancePercentile');
  @override
  late final GeneratedColumn<double> relevancePercentile =
      GeneratedColumn<double>('relevance_percentile', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _sourcesMeta =
      const VerificationMeta('sources');
  @override
  late final GeneratedColumn<String> sources = GeneratedColumn<String>(
      'sources', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        originalTitle,
        plotOverview,
        type,
        runtimeMinutes,
        year,
        endYear,
        releaseDate,
        genres,
        genreNames,
        userRating,
        criticScore,
        usRating,
        poster,
        backdrop,
        originalLanguage,
        similarTitles,
        networks,
        networkNames,
        trailer,
        trailerThumbnail,
        relevancePercentile,
        sources
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites';
  @override
  VerificationContext validateIntegrity(Insertable<Favorite> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
          _originalTitleMeta,
          originalTitle.isAcceptableOrUnknown(
              data['original_title']!, _originalTitleMeta));
    } else if (isInserting) {
      context.missing(_originalTitleMeta);
    }
    if (data.containsKey('plot_overview')) {
      context.handle(
          _plotOverviewMeta,
          plotOverview.isAcceptableOrUnknown(
              data['plot_overview']!, _plotOverviewMeta));
    } else if (isInserting) {
      context.missing(_plotOverviewMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('runtime_minutes')) {
      context.handle(
          _runtimeMinutesMeta,
          runtimeMinutes.isAcceptableOrUnknown(
              data['runtime_minutes']!, _runtimeMinutesMeta));
    } else if (isInserting) {
      context.missing(_runtimeMinutesMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('end_year')) {
      context.handle(_endYearMeta,
          endYear.isAcceptableOrUnknown(data['end_year']!, _endYearMeta));
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    } else if (isInserting) {
      context.missing(_releaseDateMeta);
    }
    if (data.containsKey('genres')) {
      context.handle(_genresMeta,
          genres.isAcceptableOrUnknown(data['genres']!, _genresMeta));
    } else if (isInserting) {
      context.missing(_genresMeta);
    }
    if (data.containsKey('genre_names')) {
      context.handle(
          _genreNamesMeta,
          genreNames.isAcceptableOrUnknown(
              data['genre_names']!, _genreNamesMeta));
    } else if (isInserting) {
      context.missing(_genreNamesMeta);
    }
    if (data.containsKey('user_rating')) {
      context.handle(
          _userRatingMeta,
          userRating.isAcceptableOrUnknown(
              data['user_rating']!, _userRatingMeta));
    } else if (isInserting) {
      context.missing(_userRatingMeta);
    }
    if (data.containsKey('critic_score')) {
      context.handle(
          _criticScoreMeta,
          criticScore.isAcceptableOrUnknown(
              data['critic_score']!, _criticScoreMeta));
    } else if (isInserting) {
      context.missing(_criticScoreMeta);
    }
    if (data.containsKey('us_rating')) {
      context.handle(_usRatingMeta,
          usRating.isAcceptableOrUnknown(data['us_rating']!, _usRatingMeta));
    } else if (isInserting) {
      context.missing(_usRatingMeta);
    }
    if (data.containsKey('poster')) {
      context.handle(_posterMeta,
          poster.isAcceptableOrUnknown(data['poster']!, _posterMeta));
    } else if (isInserting) {
      context.missing(_posterMeta);
    }
    if (data.containsKey('backdrop')) {
      context.handle(_backdropMeta,
          backdrop.isAcceptableOrUnknown(data['backdrop']!, _backdropMeta));
    } else if (isInserting) {
      context.missing(_backdropMeta);
    }
    if (data.containsKey('original_language')) {
      context.handle(
          _originalLanguageMeta,
          originalLanguage.isAcceptableOrUnknown(
              data['original_language']!, _originalLanguageMeta));
    } else if (isInserting) {
      context.missing(_originalLanguageMeta);
    }
    if (data.containsKey('similar_titles')) {
      context.handle(
          _similarTitlesMeta,
          similarTitles.isAcceptableOrUnknown(
              data['similar_titles']!, _similarTitlesMeta));
    } else if (isInserting) {
      context.missing(_similarTitlesMeta);
    }
    if (data.containsKey('networks')) {
      context.handle(_networksMeta,
          networks.isAcceptableOrUnknown(data['networks']!, _networksMeta));
    } else if (isInserting) {
      context.missing(_networksMeta);
    }
    if (data.containsKey('network_names')) {
      context.handle(
          _networkNamesMeta,
          networkNames.isAcceptableOrUnknown(
              data['network_names']!, _networkNamesMeta));
    } else if (isInserting) {
      context.missing(_networkNamesMeta);
    }
    if (data.containsKey('trailer')) {
      context.handle(_trailerMeta,
          trailer.isAcceptableOrUnknown(data['trailer']!, _trailerMeta));
    } else if (isInserting) {
      context.missing(_trailerMeta);
    }
    if (data.containsKey('trailer_thumbnail')) {
      context.handle(
          _trailerThumbnailMeta,
          trailerThumbnail.isAcceptableOrUnknown(
              data['trailer_thumbnail']!, _trailerThumbnailMeta));
    } else if (isInserting) {
      context.missing(_trailerThumbnailMeta);
    }
    if (data.containsKey('relevance_percentile')) {
      context.handle(
          _relevancePercentileMeta,
          relevancePercentile.isAcceptableOrUnknown(
              data['relevance_percentile']!, _relevancePercentileMeta));
    } else if (isInserting) {
      context.missing(_relevancePercentileMeta);
    }
    if (data.containsKey('sources')) {
      context.handle(_sourcesMeta,
          sources.isAcceptableOrUnknown(data['sources']!, _sourcesMeta));
    } else if (isInserting) {
      context.missing(_sourcesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Favorite(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      originalTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}original_title'])!,
      plotOverview: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}plot_overview'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      runtimeMinutes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}runtime_minutes'])!,
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year'])!,
      endYear: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}end_year']),
      releaseDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}release_date'])!,
      genres: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genres'])!,
      genreNames: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genre_names'])!,
      userRating: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}user_rating'])!,
      criticScore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}critic_score'])!,
      usRating: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}us_rating'])!,
      poster: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster'])!,
      backdrop: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}backdrop'])!,
      originalLanguage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}original_language'])!,
      similarTitles: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}similar_titles'])!,
      networks: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}networks'])!,
      networkNames: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}network_names'])!,
      trailer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}trailer'])!,
      trailerThumbnail: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}trailer_thumbnail'])!,
      relevancePercentile: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}relevance_percentile'])!,
      sources: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sources'])!,
    );
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(attachedDatabase, alias);
  }
}

class Favorite extends DataClass implements Insertable<Favorite> {
  final int id;
  final String title;
  final String originalTitle;
  final String plotOverview;
  final String type;
  final int runtimeMinutes;
  final int year;
  final int? endYear;
  final DateTime releaseDate;
  final String genres;
  final String genreNames;
  final double userRating;
  final int criticScore;
  final String usRating;
  final String poster;
  final String backdrop;
  final String originalLanguage;
  final String similarTitles;
  final String networks;
  final String networkNames;
  final String trailer;
  final String trailerThumbnail;
  final double relevancePercentile;
  final String sources;
  const Favorite(
      {required this.id,
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
      required this.sources});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['original_title'] = Variable<String>(originalTitle);
    map['plot_overview'] = Variable<String>(plotOverview);
    map['type'] = Variable<String>(type);
    map['runtime_minutes'] = Variable<int>(runtimeMinutes);
    map['year'] = Variable<int>(year);
    if (!nullToAbsent || endYear != null) {
      map['end_year'] = Variable<int>(endYear);
    }
    map['release_date'] = Variable<DateTime>(releaseDate);
    map['genres'] = Variable<String>(genres);
    map['genre_names'] = Variable<String>(genreNames);
    map['user_rating'] = Variable<double>(userRating);
    map['critic_score'] = Variable<int>(criticScore);
    map['us_rating'] = Variable<String>(usRating);
    map['poster'] = Variable<String>(poster);
    map['backdrop'] = Variable<String>(backdrop);
    map['original_language'] = Variable<String>(originalLanguage);
    map['similar_titles'] = Variable<String>(similarTitles);
    map['networks'] = Variable<String>(networks);
    map['network_names'] = Variable<String>(networkNames);
    map['trailer'] = Variable<String>(trailer);
    map['trailer_thumbnail'] = Variable<String>(trailerThumbnail);
    map['relevance_percentile'] = Variable<double>(relevancePercentile);
    map['sources'] = Variable<String>(sources);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      id: Value(id),
      title: Value(title),
      originalTitle: Value(originalTitle),
      plotOverview: Value(plotOverview),
      type: Value(type),
      runtimeMinutes: Value(runtimeMinutes),
      year: Value(year),
      endYear: endYear == null && nullToAbsent
          ? const Value.absent()
          : Value(endYear),
      releaseDate: Value(releaseDate),
      genres: Value(genres),
      genreNames: Value(genreNames),
      userRating: Value(userRating),
      criticScore: Value(criticScore),
      usRating: Value(usRating),
      poster: Value(poster),
      backdrop: Value(backdrop),
      originalLanguage: Value(originalLanguage),
      similarTitles: Value(similarTitles),
      networks: Value(networks),
      networkNames: Value(networkNames),
      trailer: Value(trailer),
      trailerThumbnail: Value(trailerThumbnail),
      relevancePercentile: Value(relevancePercentile),
      sources: Value(sources),
    );
  }

  factory Favorite.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Favorite(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      plotOverview: serializer.fromJson<String>(json['plotOverview']),
      type: serializer.fromJson<String>(json['type']),
      runtimeMinutes: serializer.fromJson<int>(json['runtimeMinutes']),
      year: serializer.fromJson<int>(json['year']),
      endYear: serializer.fromJson<int?>(json['endYear']),
      releaseDate: serializer.fromJson<DateTime>(json['releaseDate']),
      genres: serializer.fromJson<String>(json['genres']),
      genreNames: serializer.fromJson<String>(json['genreNames']),
      userRating: serializer.fromJson<double>(json['userRating']),
      criticScore: serializer.fromJson<int>(json['criticScore']),
      usRating: serializer.fromJson<String>(json['usRating']),
      poster: serializer.fromJson<String>(json['poster']),
      backdrop: serializer.fromJson<String>(json['backdrop']),
      originalLanguage: serializer.fromJson<String>(json['originalLanguage']),
      similarTitles: serializer.fromJson<String>(json['similarTitles']),
      networks: serializer.fromJson<String>(json['networks']),
      networkNames: serializer.fromJson<String>(json['networkNames']),
      trailer: serializer.fromJson<String>(json['trailer']),
      trailerThumbnail: serializer.fromJson<String>(json['trailerThumbnail']),
      relevancePercentile:
          serializer.fromJson<double>(json['relevancePercentile']),
      sources: serializer.fromJson<String>(json['sources']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'plotOverview': serializer.toJson<String>(plotOverview),
      'type': serializer.toJson<String>(type),
      'runtimeMinutes': serializer.toJson<int>(runtimeMinutes),
      'year': serializer.toJson<int>(year),
      'endYear': serializer.toJson<int?>(endYear),
      'releaseDate': serializer.toJson<DateTime>(releaseDate),
      'genres': serializer.toJson<String>(genres),
      'genreNames': serializer.toJson<String>(genreNames),
      'userRating': serializer.toJson<double>(userRating),
      'criticScore': serializer.toJson<int>(criticScore),
      'usRating': serializer.toJson<String>(usRating),
      'poster': serializer.toJson<String>(poster),
      'backdrop': serializer.toJson<String>(backdrop),
      'originalLanguage': serializer.toJson<String>(originalLanguage),
      'similarTitles': serializer.toJson<String>(similarTitles),
      'networks': serializer.toJson<String>(networks),
      'networkNames': serializer.toJson<String>(networkNames),
      'trailer': serializer.toJson<String>(trailer),
      'trailerThumbnail': serializer.toJson<String>(trailerThumbnail),
      'relevancePercentile': serializer.toJson<double>(relevancePercentile),
      'sources': serializer.toJson<String>(sources),
    };
  }

  Favorite copyWith(
          {int? id,
          String? title,
          String? originalTitle,
          String? plotOverview,
          String? type,
          int? runtimeMinutes,
          int? year,
          Value<int?> endYear = const Value.absent(),
          DateTime? releaseDate,
          String? genres,
          String? genreNames,
          double? userRating,
          int? criticScore,
          String? usRating,
          String? poster,
          String? backdrop,
          String? originalLanguage,
          String? similarTitles,
          String? networks,
          String? networkNames,
          String? trailer,
          String? trailerThumbnail,
          double? relevancePercentile,
          String? sources}) =>
      Favorite(
        id: id ?? this.id,
        title: title ?? this.title,
        originalTitle: originalTitle ?? this.originalTitle,
        plotOverview: plotOverview ?? this.plotOverview,
        type: type ?? this.type,
        runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
        year: year ?? this.year,
        endYear: endYear.present ? endYear.value : this.endYear,
        releaseDate: releaseDate ?? this.releaseDate,
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
  Favorite copyWithCompanion(FavoritesCompanion data) {
    return Favorite(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      originalTitle: data.originalTitle.present
          ? data.originalTitle.value
          : this.originalTitle,
      plotOverview: data.plotOverview.present
          ? data.plotOverview.value
          : this.plotOverview,
      type: data.type.present ? data.type.value : this.type,
      runtimeMinutes: data.runtimeMinutes.present
          ? data.runtimeMinutes.value
          : this.runtimeMinutes,
      year: data.year.present ? data.year.value : this.year,
      endYear: data.endYear.present ? data.endYear.value : this.endYear,
      releaseDate:
          data.releaseDate.present ? data.releaseDate.value : this.releaseDate,
      genres: data.genres.present ? data.genres.value : this.genres,
      genreNames:
          data.genreNames.present ? data.genreNames.value : this.genreNames,
      userRating:
          data.userRating.present ? data.userRating.value : this.userRating,
      criticScore:
          data.criticScore.present ? data.criticScore.value : this.criticScore,
      usRating: data.usRating.present ? data.usRating.value : this.usRating,
      poster: data.poster.present ? data.poster.value : this.poster,
      backdrop: data.backdrop.present ? data.backdrop.value : this.backdrop,
      originalLanguage: data.originalLanguage.present
          ? data.originalLanguage.value
          : this.originalLanguage,
      similarTitles: data.similarTitles.present
          ? data.similarTitles.value
          : this.similarTitles,
      networks: data.networks.present ? data.networks.value : this.networks,
      networkNames: data.networkNames.present
          ? data.networkNames.value
          : this.networkNames,
      trailer: data.trailer.present ? data.trailer.value : this.trailer,
      trailerThumbnail: data.trailerThumbnail.present
          ? data.trailerThumbnail.value
          : this.trailerThumbnail,
      relevancePercentile: data.relevancePercentile.present
          ? data.relevancePercentile.value
          : this.relevancePercentile,
      sources: data.sources.present ? data.sources.value : this.sources,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('plotOverview: $plotOverview, ')
          ..write('type: $type, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('year: $year, ')
          ..write('endYear: $endYear, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('genres: $genres, ')
          ..write('genreNames: $genreNames, ')
          ..write('userRating: $userRating, ')
          ..write('criticScore: $criticScore, ')
          ..write('usRating: $usRating, ')
          ..write('poster: $poster, ')
          ..write('backdrop: $backdrop, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('similarTitles: $similarTitles, ')
          ..write('networks: $networks, ')
          ..write('networkNames: $networkNames, ')
          ..write('trailer: $trailer, ')
          ..write('trailerThumbnail: $trailerThumbnail, ')
          ..write('relevancePercentile: $relevancePercentile, ')
          ..write('sources: $sources')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        title,
        originalTitle,
        plotOverview,
        type,
        runtimeMinutes,
        year,
        endYear,
        releaseDate,
        genres,
        genreNames,
        userRating,
        criticScore,
        usRating,
        poster,
        backdrop,
        originalLanguage,
        similarTitles,
        networks,
        networkNames,
        trailer,
        trailerThumbnail,
        relevancePercentile,
        sources
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.id == this.id &&
          other.title == this.title &&
          other.originalTitle == this.originalTitle &&
          other.plotOverview == this.plotOverview &&
          other.type == this.type &&
          other.runtimeMinutes == this.runtimeMinutes &&
          other.year == this.year &&
          other.endYear == this.endYear &&
          other.releaseDate == this.releaseDate &&
          other.genres == this.genres &&
          other.genreNames == this.genreNames &&
          other.userRating == this.userRating &&
          other.criticScore == this.criticScore &&
          other.usRating == this.usRating &&
          other.poster == this.poster &&
          other.backdrop == this.backdrop &&
          other.originalLanguage == this.originalLanguage &&
          other.similarTitles == this.similarTitles &&
          other.networks == this.networks &&
          other.networkNames == this.networkNames &&
          other.trailer == this.trailer &&
          other.trailerThumbnail == this.trailerThumbnail &&
          other.relevancePercentile == this.relevancePercentile &&
          other.sources == this.sources);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> originalTitle;
  final Value<String> plotOverview;
  final Value<String> type;
  final Value<int> runtimeMinutes;
  final Value<int> year;
  final Value<int?> endYear;
  final Value<DateTime> releaseDate;
  final Value<String> genres;
  final Value<String> genreNames;
  final Value<double> userRating;
  final Value<int> criticScore;
  final Value<String> usRating;
  final Value<String> poster;
  final Value<String> backdrop;
  final Value<String> originalLanguage;
  final Value<String> similarTitles;
  final Value<String> networks;
  final Value<String> networkNames;
  final Value<String> trailer;
  final Value<String> trailerThumbnail;
  final Value<double> relevancePercentile;
  final Value<String> sources;
  const FavoritesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.plotOverview = const Value.absent(),
    this.type = const Value.absent(),
    this.runtimeMinutes = const Value.absent(),
    this.year = const Value.absent(),
    this.endYear = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.genres = const Value.absent(),
    this.genreNames = const Value.absent(),
    this.userRating = const Value.absent(),
    this.criticScore = const Value.absent(),
    this.usRating = const Value.absent(),
    this.poster = const Value.absent(),
    this.backdrop = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.similarTitles = const Value.absent(),
    this.networks = const Value.absent(),
    this.networkNames = const Value.absent(),
    this.trailer = const Value.absent(),
    this.trailerThumbnail = const Value.absent(),
    this.relevancePercentile = const Value.absent(),
    this.sources = const Value.absent(),
  });
  FavoritesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String originalTitle,
    required String plotOverview,
    required String type,
    required int runtimeMinutes,
    required int year,
    this.endYear = const Value.absent(),
    required DateTime releaseDate,
    required String genres,
    required String genreNames,
    required double userRating,
    required int criticScore,
    required String usRating,
    required String poster,
    required String backdrop,
    required String originalLanguage,
    required String similarTitles,
    required String networks,
    required String networkNames,
    required String trailer,
    required String trailerThumbnail,
    required double relevancePercentile,
    required String sources,
  })  : title = Value(title),
        originalTitle = Value(originalTitle),
        plotOverview = Value(plotOverview),
        type = Value(type),
        runtimeMinutes = Value(runtimeMinutes),
        year = Value(year),
        releaseDate = Value(releaseDate),
        genres = Value(genres),
        genreNames = Value(genreNames),
        userRating = Value(userRating),
        criticScore = Value(criticScore),
        usRating = Value(usRating),
        poster = Value(poster),
        backdrop = Value(backdrop),
        originalLanguage = Value(originalLanguage),
        similarTitles = Value(similarTitles),
        networks = Value(networks),
        networkNames = Value(networkNames),
        trailer = Value(trailer),
        trailerThumbnail = Value(trailerThumbnail),
        relevancePercentile = Value(relevancePercentile),
        sources = Value(sources);
  static Insertable<Favorite> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? originalTitle,
    Expression<String>? plotOverview,
    Expression<String>? type,
    Expression<int>? runtimeMinutes,
    Expression<int>? year,
    Expression<int>? endYear,
    Expression<DateTime>? releaseDate,
    Expression<String>? genres,
    Expression<String>? genreNames,
    Expression<double>? userRating,
    Expression<int>? criticScore,
    Expression<String>? usRating,
    Expression<String>? poster,
    Expression<String>? backdrop,
    Expression<String>? originalLanguage,
    Expression<String>? similarTitles,
    Expression<String>? networks,
    Expression<String>? networkNames,
    Expression<String>? trailer,
    Expression<String>? trailerThumbnail,
    Expression<double>? relevancePercentile,
    Expression<String>? sources,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (originalTitle != null) 'original_title': originalTitle,
      if (plotOverview != null) 'plot_overview': plotOverview,
      if (type != null) 'type': type,
      if (runtimeMinutes != null) 'runtime_minutes': runtimeMinutes,
      if (year != null) 'year': year,
      if (endYear != null) 'end_year': endYear,
      if (releaseDate != null) 'release_date': releaseDate,
      if (genres != null) 'genres': genres,
      if (genreNames != null) 'genre_names': genreNames,
      if (userRating != null) 'user_rating': userRating,
      if (criticScore != null) 'critic_score': criticScore,
      if (usRating != null) 'us_rating': usRating,
      if (poster != null) 'poster': poster,
      if (backdrop != null) 'backdrop': backdrop,
      if (originalLanguage != null) 'original_language': originalLanguage,
      if (similarTitles != null) 'similar_titles': similarTitles,
      if (networks != null) 'networks': networks,
      if (networkNames != null) 'network_names': networkNames,
      if (trailer != null) 'trailer': trailer,
      if (trailerThumbnail != null) 'trailer_thumbnail': trailerThumbnail,
      if (relevancePercentile != null)
        'relevance_percentile': relevancePercentile,
      if (sources != null) 'sources': sources,
    });
  }

  FavoritesCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? originalTitle,
      Value<String>? plotOverview,
      Value<String>? type,
      Value<int>? runtimeMinutes,
      Value<int>? year,
      Value<int?>? endYear,
      Value<DateTime>? releaseDate,
      Value<String>? genres,
      Value<String>? genreNames,
      Value<double>? userRating,
      Value<int>? criticScore,
      Value<String>? usRating,
      Value<String>? poster,
      Value<String>? backdrop,
      Value<String>? originalLanguage,
      Value<String>? similarTitles,
      Value<String>? networks,
      Value<String>? networkNames,
      Value<String>? trailer,
      Value<String>? trailerThumbnail,
      Value<double>? relevancePercentile,
      Value<String>? sources}) {
    return FavoritesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      originalTitle: originalTitle ?? this.originalTitle,
      plotOverview: plotOverview ?? this.plotOverview,
      type: type ?? this.type,
      runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
      year: year ?? this.year,
      endYear: endYear ?? this.endYear,
      releaseDate: releaseDate ?? this.releaseDate,
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
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (plotOverview.present) {
      map['plot_overview'] = Variable<String>(plotOverview.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (runtimeMinutes.present) {
      map['runtime_minutes'] = Variable<int>(runtimeMinutes.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (endYear.present) {
      map['end_year'] = Variable<int>(endYear.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<DateTime>(releaseDate.value);
    }
    if (genres.present) {
      map['genres'] = Variable<String>(genres.value);
    }
    if (genreNames.present) {
      map['genre_names'] = Variable<String>(genreNames.value);
    }
    if (userRating.present) {
      map['user_rating'] = Variable<double>(userRating.value);
    }
    if (criticScore.present) {
      map['critic_score'] = Variable<int>(criticScore.value);
    }
    if (usRating.present) {
      map['us_rating'] = Variable<String>(usRating.value);
    }
    if (poster.present) {
      map['poster'] = Variable<String>(poster.value);
    }
    if (backdrop.present) {
      map['backdrop'] = Variable<String>(backdrop.value);
    }
    if (originalLanguage.present) {
      map['original_language'] = Variable<String>(originalLanguage.value);
    }
    if (similarTitles.present) {
      map['similar_titles'] = Variable<String>(similarTitles.value);
    }
    if (networks.present) {
      map['networks'] = Variable<String>(networks.value);
    }
    if (networkNames.present) {
      map['network_names'] = Variable<String>(networkNames.value);
    }
    if (trailer.present) {
      map['trailer'] = Variable<String>(trailer.value);
    }
    if (trailerThumbnail.present) {
      map['trailer_thumbnail'] = Variable<String>(trailerThumbnail.value);
    }
    if (relevancePercentile.present) {
      map['relevance_percentile'] = Variable<double>(relevancePercentile.value);
    }
    if (sources.present) {
      map['sources'] = Variable<String>(sources.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('plotOverview: $plotOverview, ')
          ..write('type: $type, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('year: $year, ')
          ..write('endYear: $endYear, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('genres: $genres, ')
          ..write('genreNames: $genreNames, ')
          ..write('userRating: $userRating, ')
          ..write('criticScore: $criticScore, ')
          ..write('usRating: $usRating, ')
          ..write('poster: $poster, ')
          ..write('backdrop: $backdrop, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('similarTitles: $similarTitles, ')
          ..write('networks: $networks, ')
          ..write('networkNames: $networkNames, ')
          ..write('trailer: $trailer, ')
          ..write('trailerThumbnail: $trailerThumbnail, ')
          ..write('relevancePercentile: $relevancePercentile, ')
          ..write('sources: $sources')
          ..write(')'))
        .toString();
  }
}

class $SourcesTable extends Sources with TableInfo<$SourcesTable, Source> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SourcesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _androidPlayStoreUrlMeta =
      const VerificationMeta('androidPlayStoreUrl');
  @override
  late final GeneratedColumn<String> androidPlayStoreUrl =
      GeneratedColumn<String>('android_play_store_url', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _androidSchemeMeta =
      const VerificationMeta('androidScheme');
  @override
  late final GeneratedColumn<String> androidScheme = GeneratedColumn<String>(
      'android_scheme', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _iosAppStoreUrlMeta =
      const VerificationMeta('iosAppStoreUrl');
  @override
  late final GeneratedColumn<String> iosAppStoreUrl = GeneratedColumn<String>(
      'ios_app_store_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _iosSchemeMeta =
      const VerificationMeta('iosScheme');
  @override
  late final GeneratedColumn<String> iosScheme = GeneratedColumn<String>(
      'ios_scheme', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _logo100pxMeta =
      const VerificationMeta('logo100px');
  @override
  late final GeneratedColumn<String> logo100px =
      GeneratedColumn<String>('logo100px', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name =
      GeneratedColumn<String>('name', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _regionsMeta =
      const VerificationMeta('regions');
  @override
  late final GeneratedColumn<String> regions = GeneratedColumn<String>(
      'regions', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type =
      GeneratedColumn<String>('type', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        androidPlayStoreUrl,
        androidScheme,
        iosAppStoreUrl,
        iosScheme,
        logo100px,
        name,
        regions,
        type
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sources';
  @override
  VerificationContext validateIntegrity(Insertable<Source> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('android_play_store_url')) {
      context.handle(
          _androidPlayStoreUrlMeta,
          androidPlayStoreUrl.isAcceptableOrUnknown(
              data['android_play_store_url']!, _androidPlayStoreUrlMeta));
    }
    if (data.containsKey('android_scheme')) {
      context.handle(
          _androidSchemeMeta,
          androidScheme.isAcceptableOrUnknown(
              data['android_scheme']!, _androidSchemeMeta));
    }
    if (data.containsKey('ios_app_store_url')) {
      context.handle(
          _iosAppStoreUrlMeta,
          iosAppStoreUrl.isAcceptableOrUnknown(
              data['ios_app_store_url']!, _iosAppStoreUrlMeta));
    }
    if (data.containsKey('ios_scheme')) {
      context.handle(_iosSchemeMeta,
          iosScheme.isAcceptableOrUnknown(data['ios_scheme']!, _iosSchemeMeta));
    }
    if (data.containsKey('logo100px')) {
      context.handle(_logo100pxMeta,
          logo100px.isAcceptableOrUnknown(data['logo100px']!, _logo100pxMeta));
    } else if (isInserting) {
      context.missing(_logo100pxMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('regions')) {
      context.handle(_regionsMeta,
          regions.isAcceptableOrUnknown(data['regions']!, _regionsMeta));
    } else if (isInserting) {
      context.missing(_regionsMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Source map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Source(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      androidPlayStoreUrl: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}android_play_store_url']),
      androidScheme: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}android_scheme']),
      iosAppStoreUrl: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}ios_app_store_url']),
      iosScheme: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ios_scheme']),
      logo100px: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}logo100px'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      regions: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}regions'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
    );
  }

  @override
  $SourcesTable createAlias(String alias) {
    return $SourcesTable(attachedDatabase, alias);
  }
}

class Source extends DataClass implements Insertable<Source> {
  final int id;
  final String? androidPlayStoreUrl;
  final String? androidScheme;
  final String? iosAppStoreUrl;
  final String? iosScheme;
  final String logo100px;
  final String name;
  final String regions;
  final String type;
  const Source(
      {required this.id,
      this.androidPlayStoreUrl,
      this.androidScheme,
      this.iosAppStoreUrl,
      this.iosScheme,
      required this.logo100px,
      required this.name,
      required this.regions,
      required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || androidPlayStoreUrl != null) {
      map['android_play_store_url'] = Variable<String>(androidPlayStoreUrl);
    }
    if (!nullToAbsent || androidScheme != null) {
      map['android_scheme'] = Variable<String>(androidScheme);
    }
    if (!nullToAbsent || iosAppStoreUrl != null) {
      map['ios_app_store_url'] = Variable<String>(iosAppStoreUrl);
    }
    if (!nullToAbsent || iosScheme != null) {
      map['ios_scheme'] = Variable<String>(iosScheme);
    }
    map['logo100px'] = Variable<String>(logo100px);
    map['name'] = Variable<String>(name);
    map['regions'] = Variable<String>(regions);
    map['type'] = Variable<String>(type);
    return map;
  }

  SourcesCompanion toCompanion(bool nullToAbsent) {
    return SourcesCompanion(
      id: Value(id),
      androidPlayStoreUrl: androidPlayStoreUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(androidPlayStoreUrl),
      androidScheme: androidScheme == null && nullToAbsent
          ? const Value.absent()
          : Value(androidScheme),
      iosAppStoreUrl: iosAppStoreUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(iosAppStoreUrl),
      iosScheme: iosScheme == null && nullToAbsent
          ? const Value.absent()
          : Value(iosScheme),
      logo100px: Value(logo100px),
      name: Value(name),
      regions: Value(regions),
      type: Value(type),
    );
  }

  factory Source.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Source(
      id: serializer.fromJson<int>(json['id']),
      androidPlayStoreUrl:
          serializer.fromJson<String?>(json['androidPlayStoreUrl']),
      androidScheme: serializer.fromJson<String?>(json['androidScheme']),
      iosAppStoreUrl: serializer.fromJson<String?>(json['iosAppStoreUrl']),
      iosScheme: serializer.fromJson<String?>(json['iosScheme']),
      logo100px: serializer.fromJson<String>(json['logo100px']),
      name: serializer.fromJson<String>(json['name']),
      regions: serializer.fromJson<String>(json['regions']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'androidPlayStoreUrl': serializer.toJson<String?>(androidPlayStoreUrl),
      'androidScheme': serializer.toJson<String?>(androidScheme),
      'iosAppStoreUrl': serializer.toJson<String?>(iosAppStoreUrl),
      'iosScheme': serializer.toJson<String?>(iosScheme),
      'logo100px': serializer.toJson<String>(logo100px),
      'name': serializer.toJson<String>(name),
      'regions': serializer.toJson<String>(regions),
      'type': serializer.toJson<String>(type),
    };
  }

  Source copyWith(
          {int? id,
          Value<String?> androidPlayStoreUrl = const Value.absent(),
          Value<String?> androidScheme = const Value.absent(),
          Value<String?> iosAppStoreUrl = const Value.absent(),
          Value<String?> iosScheme = const Value.absent(),
          String? logo100px,
          String? name,
          String? regions,
          String? type}) =>
      Source(
        id: id ?? this.id,
        androidPlayStoreUrl: androidPlayStoreUrl.present
            ? androidPlayStoreUrl.value
            : this.androidPlayStoreUrl,
        androidScheme:
            androidScheme.present ? androidScheme.value : this.androidScheme,
        iosAppStoreUrl:
            iosAppStoreUrl.present ? iosAppStoreUrl.value : this.iosAppStoreUrl,
        iosScheme: iosScheme.present ? iosScheme.value : this.iosScheme,
        logo100px: logo100px ?? this.logo100px,
        name: name ?? this.name,
        regions: regions ?? this.regions,
        type: type ?? this.type,
      );
  Source copyWithCompanion(SourcesCompanion data) {
    return Source(
      id: data.id.present ? data.id.value : this.id,
      androidPlayStoreUrl: data.androidPlayStoreUrl.present
          ? data.androidPlayStoreUrl.value
          : this.androidPlayStoreUrl,
      androidScheme: data.androidScheme.present
          ? data.androidScheme.value
          : this.androidScheme,
      iosAppStoreUrl: data.iosAppStoreUrl.present
          ? data.iosAppStoreUrl.value
          : this.iosAppStoreUrl,
      iosScheme: data.iosScheme.present ? data.iosScheme.value : this.iosScheme,
      logo100px: data.logo100px.present ? data.logo100px.value : this.logo100px,
      name: data.name.present ? data.name.value : this.name,
      regions: data.regions.present ? data.regions.value : this.regions,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Source(')
          ..write('id: $id, ')
          ..write('androidPlayStoreUrl: $androidPlayStoreUrl, ')
          ..write('androidScheme: $androidScheme, ')
          ..write('iosAppStoreUrl: $iosAppStoreUrl, ')
          ..write('iosScheme: $iosScheme, ')
          ..write('logo100px: $logo100px, ')
          ..write('name: $name, ')
          ..write('regions: $regions, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, androidPlayStoreUrl, androidScheme,
      iosAppStoreUrl, iosScheme, logo100px, name, regions, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Source &&
          other.id == this.id &&
          other.androidPlayStoreUrl == this.androidPlayStoreUrl &&
          other.androidScheme == this.androidScheme &&
          other.iosAppStoreUrl == this.iosAppStoreUrl &&
          other.iosScheme == this.iosScheme &&
          other.logo100px == this.logo100px &&
          other.name == this.name &&
          other.regions == this.regions &&
          other.type == this.type);
}

class SourcesCompanion extends UpdateCompanion<Source> {
  final Value<int> id;
  final Value<String?> androidPlayStoreUrl;
  final Value<String?> androidScheme;
  final Value<String?> iosAppStoreUrl;
  final Value<String?> iosScheme;
  final Value<String> logo100px;
  final Value<String> name;
  final Value<String> regions;
  final Value<String> type;
  const SourcesCompanion({
    this.id = const Value.absent(),
    this.androidPlayStoreUrl = const Value.absent(),
    this.androidScheme = const Value.absent(),
    this.iosAppStoreUrl = const Value.absent(),
    this.iosScheme = const Value.absent(),
    this.logo100px = const Value.absent(),
    this.name = const Value.absent(),
    this.regions = const Value.absent(),
    this.type = const Value.absent(),
  });
  SourcesCompanion.insert({
    this.id = const Value.absent(),
    this.androidPlayStoreUrl = const Value.absent(),
    this.androidScheme = const Value.absent(),
    this.iosAppStoreUrl = const Value.absent(),
    this.iosScheme = const Value.absent(),
    required String logo100px,
    required String name,
    required String regions,
    required String type,
  })  : logo100px = Value(logo100px),
        name = Value(name),
        regions = Value(regions),
        type = Value(type);
  static Insertable<Source> custom({
    Expression<int>? id,
    Expression<String>? androidPlayStoreUrl,
    Expression<String>? androidScheme,
    Expression<String>? iosAppStoreUrl,
    Expression<String>? iosScheme,
    Expression<String>? logo100px,
    Expression<String>? name,
    Expression<String>? regions,
    Expression<String>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (androidPlayStoreUrl != null)
        'android_play_store_url': androidPlayStoreUrl,
      if (androidScheme != null) 'android_scheme': androidScheme,
      if (iosAppStoreUrl != null) 'ios_app_store_url': iosAppStoreUrl,
      if (iosScheme != null) 'ios_scheme': iosScheme,
      if (logo100px != null) 'logo100px': logo100px,
      if (name != null) 'name': name,
      if (regions != null) 'regions': regions,
      if (type != null) 'type': type,
    });
  }

  SourcesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? androidPlayStoreUrl,
      Value<String?>? androidScheme,
      Value<String?>? iosAppStoreUrl,
      Value<String?>? iosScheme,
      Value<String>? logo100px,
      Value<String>? name,
      Value<String>? regions,
      Value<String>? type}) {
    return SourcesCompanion(
      id: id ?? this.id,
      androidPlayStoreUrl: androidPlayStoreUrl ?? this.androidPlayStoreUrl,
      androidScheme: androidScheme ?? this.androidScheme,
      iosAppStoreUrl: iosAppStoreUrl ?? this.iosAppStoreUrl,
      iosScheme: iosScheme ?? this.iosScheme,
      logo100px: logo100px ?? this.logo100px,
      name: name ?? this.name,
      regions: regions ?? this.regions,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (androidPlayStoreUrl.present) {
      map['android_play_store_url'] =
          Variable<String>(androidPlayStoreUrl.value);
    }
    if (androidScheme.present) {
      map['android_scheme'] = Variable<String>(androidScheme.value);
    }
    if (iosAppStoreUrl.present) {
      map['ios_app_store_url'] = Variable<String>(iosAppStoreUrl.value);
    }
    if (iosScheme.present) {
      map['ios_scheme'] = Variable<String>(iosScheme.value);
    }
    if (logo100px.present) {
      map['logo100px'] = Variable<String>(logo100px.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (regions.present) {
      map['regions'] = Variable<String>(regions.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SourcesCompanion(')
          ..write('id: $id, ')
          ..write('androidPlayStoreUrl: $androidPlayStoreUrl, ')
          ..write('androidScheme: $androidScheme, ')
          ..write('iosAppStoreUrl: $iosAppStoreUrl, ')
          ..write('iosScheme: $iosScheme, ')
          ..write('logo100px: $logo100px, ')
          ..write('name: $name, ')
          ..write('regions: $regions, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  late final $SourcesTable sources = $SourcesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favorites, sources];
}

typedef $$FavoritesTableCreateCompanionBuilder = FavoritesCompanion Function({
  Value<int> id,
  required String title,
  required String originalTitle,
  required String plotOverview,
  required String type,
  required int runtimeMinutes,
  required int year,
  Value<int?> endYear,
  required DateTime releaseDate,
  required String genres,
  required String genreNames,
  required double userRating,
  required int criticScore,
  required String usRating,
  required String poster,
  required String backdrop,
  required String originalLanguage,
  required String similarTitles,
  required String networks,
  required String networkNames,
  required String trailer,
  required String trailerThumbnail,
  required double relevancePercentile,
  required String sources,
});
typedef $$FavoritesTableUpdateCompanionBuilder = FavoritesCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> originalTitle,
  Value<String> plotOverview,
  Value<String> type,
  Value<int> runtimeMinutes,
  Value<int> year,
  Value<int?> endYear,
  Value<DateTime> releaseDate,
  Value<String> genres,
  Value<String> genreNames,
  Value<double> userRating,
  Value<int> criticScore,
  Value<String> usRating,
  Value<String> poster,
  Value<String> backdrop,
  Value<String> originalLanguage,
  Value<String> similarTitles,
  Value<String> networks,
  Value<String> networkNames,
  Value<String> trailer,
  Value<String> trailerThumbnail,
  Value<double> relevancePercentile,
  Value<String> sources,
});

class $$FavoritesTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $FavoritesTable,
    Favorite,
    $$FavoritesTableFilterComposer,
    $$FavoritesTableOrderingComposer,
    $$FavoritesTableCreateCompanionBuilder,
    $$FavoritesTableUpdateCompanionBuilder> {
  $$FavoritesTableTableManager(_$LocalDatabase db, $FavoritesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FavoritesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FavoritesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> originalTitle = const Value.absent(),
            Value<String> plotOverview = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<int> runtimeMinutes = const Value.absent(),
            Value<int> year = const Value.absent(),
            Value<int?> endYear = const Value.absent(),
            Value<DateTime> releaseDate = const Value.absent(),
            Value<String> genres = const Value.absent(),
            Value<String> genreNames = const Value.absent(),
            Value<double> userRating = const Value.absent(),
            Value<int> criticScore = const Value.absent(),
            Value<String> usRating = const Value.absent(),
            Value<String> poster = const Value.absent(),
            Value<String> backdrop = const Value.absent(),
            Value<String> originalLanguage = const Value.absent(),
            Value<String> similarTitles = const Value.absent(),
            Value<String> networks = const Value.absent(),
            Value<String> networkNames = const Value.absent(),
            Value<String> trailer = const Value.absent(),
            Value<String> trailerThumbnail = const Value.absent(),
            Value<double> relevancePercentile = const Value.absent(),
            Value<String> sources = const Value.absent(),
          }) =>
              FavoritesCompanion(
            id: id,
            title: title,
            originalTitle: originalTitle,
            plotOverview: plotOverview,
            type: type,
            runtimeMinutes: runtimeMinutes,
            year: year,
            endYear: endYear,
            releaseDate: releaseDate,
            genres: genres,
            genreNames: genreNames,
            userRating: userRating,
            criticScore: criticScore,
            usRating: usRating,
            poster: poster,
            backdrop: backdrop,
            originalLanguage: originalLanguage,
            similarTitles: similarTitles,
            networks: networks,
            networkNames: networkNames,
            trailer: trailer,
            trailerThumbnail: trailerThumbnail,
            relevancePercentile: relevancePercentile,
            sources: sources,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String originalTitle,
            required String plotOverview,
            required String type,
            required int runtimeMinutes,
            required int year,
            Value<int?> endYear = const Value.absent(),
            required DateTime releaseDate,
            required String genres,
            required String genreNames,
            required double userRating,
            required int criticScore,
            required String usRating,
            required String poster,
            required String backdrop,
            required String originalLanguage,
            required String similarTitles,
            required String networks,
            required String networkNames,
            required String trailer,
            required String trailerThumbnail,
            required double relevancePercentile,
            required String sources,
          }) =>
              FavoritesCompanion.insert(
            id: id,
            title: title,
            originalTitle: originalTitle,
            plotOverview: plotOverview,
            type: type,
            runtimeMinutes: runtimeMinutes,
            year: year,
            endYear: endYear,
            releaseDate: releaseDate,
            genres: genres,
            genreNames: genreNames,
            userRating: userRating,
            criticScore: criticScore,
            usRating: usRating,
            poster: poster,
            backdrop: backdrop,
            originalLanguage: originalLanguage,
            similarTitles: similarTitles,
            networks: networks,
            networkNames: networkNames,
            trailer: trailer,
            trailerThumbnail: trailerThumbnail,
            relevancePercentile: relevancePercentile,
            sources: sources,
          ),
        ));
}

class $$FavoritesTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $FavoritesTable> {
  $$FavoritesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get originalTitle => $state.composableBuilder(
      column: $state.table.originalTitle,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get plotOverview => $state.composableBuilder(
      column: $state.table.plotOverview,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get runtimeMinutes => $state.composableBuilder(
      column: $state.table.runtimeMinutes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get year => $state.composableBuilder(
      column: $state.table.year,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get endYear => $state.composableBuilder(
      column: $state.table.endYear,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get releaseDate => $state.composableBuilder(
      column: $state.table.releaseDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get genres => $state.composableBuilder(
      column: $state.table.genres,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get genreNames => $state.composableBuilder(
      column: $state.table.genreNames,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get userRating => $state.composableBuilder(
      column: $state.table.userRating,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get criticScore => $state.composableBuilder(
      column: $state.table.criticScore,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get usRating => $state.composableBuilder(
      column: $state.table.usRating,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get poster => $state.composableBuilder(
      column: $state.table.poster,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get backdrop => $state.composableBuilder(
      column: $state.table.backdrop,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get originalLanguage => $state.composableBuilder(
      column: $state.table.originalLanguage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get similarTitles => $state.composableBuilder(
      column: $state.table.similarTitles,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get networks => $state.composableBuilder(
      column: $state.table.networks,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get networkNames => $state.composableBuilder(
      column: $state.table.networkNames,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get trailer => $state.composableBuilder(
      column: $state.table.trailer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get trailerThumbnail => $state.composableBuilder(
      column: $state.table.trailerThumbnail,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get relevancePercentile => $state.composableBuilder(
      column: $state.table.relevancePercentile,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sources => $state.composableBuilder(
      column: $state.table.sources,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$FavoritesTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $FavoritesTable> {
  $$FavoritesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get originalTitle => $state.composableBuilder(
      column: $state.table.originalTitle,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get plotOverview => $state.composableBuilder(
      column: $state.table.plotOverview,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get runtimeMinutes => $state.composableBuilder(
      column: $state.table.runtimeMinutes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get year => $state.composableBuilder(
      column: $state.table.year,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get endYear => $state.composableBuilder(
      column: $state.table.endYear,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get releaseDate => $state.composableBuilder(
      column: $state.table.releaseDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get genres => $state.composableBuilder(
      column: $state.table.genres,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get genreNames => $state.composableBuilder(
      column: $state.table.genreNames,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get userRating => $state.composableBuilder(
      column: $state.table.userRating,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get criticScore => $state.composableBuilder(
      column: $state.table.criticScore,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get usRating => $state.composableBuilder(
      column: $state.table.usRating,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get poster => $state.composableBuilder(
      column: $state.table.poster,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get backdrop => $state.composableBuilder(
      column: $state.table.backdrop,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get originalLanguage => $state.composableBuilder(
      column: $state.table.originalLanguage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get similarTitles => $state.composableBuilder(
      column: $state.table.similarTitles,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get networks => $state.composableBuilder(
      column: $state.table.networks,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get networkNames => $state.composableBuilder(
      column: $state.table.networkNames,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get trailer => $state.composableBuilder(
      column: $state.table.trailer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get trailerThumbnail => $state.composableBuilder(
      column: $state.table.trailerThumbnail,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get relevancePercentile => $state.composableBuilder(
      column: $state.table.relevancePercentile,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sources => $state.composableBuilder(
      column: $state.table.sources,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SourcesTableCreateCompanionBuilder = SourcesCompanion Function({
  Value<int> id,
  Value<String?> androidPlayStoreUrl,
  Value<String?> androidScheme,
  Value<String?> iosAppStoreUrl,
  Value<String?> iosScheme,
  required String logo100px,
  required String name,
  required String regions,
  required String type,
});
typedef $$SourcesTableUpdateCompanionBuilder = SourcesCompanion Function({
  Value<int> id,
  Value<String?> androidPlayStoreUrl,
  Value<String?> androidScheme,
  Value<String?> iosAppStoreUrl,
  Value<String?> iosScheme,
  Value<String> logo100px,
  Value<String> name,
  Value<String> regions,
  Value<String> type,
});

class $$SourcesTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $SourcesTable,
    Source,
    $$SourcesTableFilterComposer,
    $$SourcesTableOrderingComposer,
    $$SourcesTableCreateCompanionBuilder,
    $$SourcesTableUpdateCompanionBuilder> {
  $$SourcesTableTableManager(_$LocalDatabase db, $SourcesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SourcesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SourcesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> androidPlayStoreUrl = const Value.absent(),
            Value<String?> androidScheme = const Value.absent(),
            Value<String?> iosAppStoreUrl = const Value.absent(),
            Value<String?> iosScheme = const Value.absent(),
            Value<String> logo100px = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> regions = const Value.absent(),
            Value<String> type = const Value.absent(),
          }) =>
              SourcesCompanion(
            id: id,
            androidPlayStoreUrl: androidPlayStoreUrl,
            androidScheme: androidScheme,
            iosAppStoreUrl: iosAppStoreUrl,
            iosScheme: iosScheme,
            logo100px: logo100px,
            name: name,
            regions: regions,
            type: type,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> androidPlayStoreUrl = const Value.absent(),
            Value<String?> androidScheme = const Value.absent(),
            Value<String?> iosAppStoreUrl = const Value.absent(),
            Value<String?> iosScheme = const Value.absent(),
            required String logo100px,
            required String name,
            required String regions,
            required String type,
          }) =>
              SourcesCompanion.insert(
            id: id,
            androidPlayStoreUrl: androidPlayStoreUrl,
            androidScheme: androidScheme,
            iosAppStoreUrl: iosAppStoreUrl,
            iosScheme: iosScheme,
            logo100px: logo100px,
            name: name,
            regions: regions,
            type: type,
          ),
        ));
}

class $$SourcesTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $SourcesTable> {
  $$SourcesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get androidPlayStoreUrl => $state.composableBuilder(
      column: $state.table.androidPlayStoreUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get androidScheme => $state.composableBuilder(
      column: $state.table.androidScheme,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get iosAppStoreUrl => $state.composableBuilder(
      column: $state.table.iosAppStoreUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get iosScheme => $state.composableBuilder(
      column: $state.table.iosScheme,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get logo100px => $state.composableBuilder(
      column: $state.table.logo100px,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get regions => $state.composableBuilder(
      column: $state.table.regions,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SourcesTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $SourcesTable> {
  $$SourcesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get androidPlayStoreUrl => $state.composableBuilder(
      column: $state.table.androidPlayStoreUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get androidScheme => $state.composableBuilder(
      column: $state.table.androidScheme,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get iosAppStoreUrl => $state.composableBuilder(
      column: $state.table.iosAppStoreUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get iosScheme => $state.composableBuilder(
      column: $state.table.iosScheme,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get logo100px => $state.composableBuilder(
      column: $state.table.logo100px,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get regions => $state.composableBuilder(
      column: $state.table.regions,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $$FavoritesTableTableManager get favorites =>
      $$FavoritesTableTableManager(_db, _db.favorites);
  $$SourcesTableTableManager get sources =>
      $$SourcesTableTableManager(_db, _db.sources);
}
