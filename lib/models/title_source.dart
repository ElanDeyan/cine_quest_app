import 'dart:convert';

import 'package:hive/hive.dart';

part 'title_source.g.dart';

@HiveType(typeId: 0)
class TitleSource {
  @HiveField(0)
  final int sourceId;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String type;

  @HiveField(3)
  final String region;

  @HiveField(4)
  final String? iosUrl;

  @HiveField(5)
  final String? androidUrl;

  @HiveField(6)
  final String? webUrl;

  @HiveField(7)
  final String format;

  @HiveField(8)
  final double? price;

  @HiveField(9)
  final int? seasons;

  @HiveField(10)
  final int? episodes;

  TitleSource({
    required this.sourceId,
    required this.name,
    required this.type,
    required this.region,
    required this.iosUrl,
    required this.androidUrl,
    required this.webUrl,
    required this.format,
    this.price,
    required this.seasons,
    required this.episodes,
  });

  TitleSource copyWith({
    int? sourceId,
    String? name,
    String? type,
    String? region,
    String? iosUrl,
    String? androidUrl,
    String? webUrl,
    String? format,
    double? price,
    int? seasons,
    int? episodes,
  }) {
    return TitleSource(
      sourceId: sourceId ?? this.sourceId,
      name: name ?? this.name,
      type: type ?? this.type,
      region: region ?? this.region,
      iosUrl: iosUrl ?? this.iosUrl,
      androidUrl: androidUrl ?? this.androidUrl,
      webUrl: webUrl ?? this.webUrl,
      format: format ?? this.format,
      price: price ?? this.price,
      seasons: seasons ?? this.seasons,
      episodes: episodes ?? this.episodes,
    );
  }

  @override
  String toString() {
    return 'TitleSource(sourceId: $sourceId, name: $name, type: $type, region: $region, iosUrl: $iosUrl, androidUrl: $androidUrl, webUrl: $webUrl, format: $format, price: $price, seasons: $seasons, episodes: $episodes)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceId': sourceId,
      'name': name,
      'type': type,
      'region': region,
      'iosUrl': iosUrl,
      'androidUrl': androidUrl,
      'webUrl': webUrl,
      'format': format,
      'price': price,
      'seasons': seasons,
      'episodes': episodes,
    };
  }

  factory TitleSource.fromMap(Map<String, dynamic> map) {
    if (map
        case {
          "source_id": final int id,
          "name": final String name,
          "type": final String type,
          "region": final String region,
          "ios_url": final String? iosUrl,
          "android_url": final String? androidUrl,
          "web_url": final String? webUrl,
          "format": final String format,
          "price": final double? price,
          "seasons": final int seasons,
          "episodes": final int episodes,
        }) {
      return TitleSource(
        sourceId: id,
        name: name,
        type: type,
        region: region,
        iosUrl: iosUrl,
        androidUrl: androidUrl,
        webUrl: webUrl,
        format: format,
        price: price,
        seasons: seasons,
        episodes: episodes,
      );
    }

    throw const FormatException();
  }

  String toJson() => json.encode(toMap());

  factory TitleSource.fromJson(String source) =>
      TitleSource.fromMap(json.decode(source) as Map<String, dynamic>);
}
