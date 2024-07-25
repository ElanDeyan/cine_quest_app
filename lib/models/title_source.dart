final class TitleSource {
  final int id;
  final String name;
  final String type;
  final String region;
  final Uri? iosUri;
  final Uri? androidUri;
  final Uri? webUri;
  final String format;
  final double? price;
  final int? seasons;
  final int? episodes;

  TitleSource({
    required this.id,
    required this.name,
    required this.type,
    required this.region,
    required this.iosUri,
    required this.androidUri,
    required this.webUri,
    required this.format,
    required this.price,
    required this.seasons,
    required this.episodes,
  });

  factory TitleSource.fromJson(Map<String, dynamic> json) {
    if (json
        case {
          "source_id": final int id,
          "name": final String name,
          "type": final String type,
          "region": final String region,
          "ios_url": final String? iosUri,
          "android_url": final String? androidUri,
          "web_url": final String? webUri,
          "format": final String format,
          "price": final double? price,
          "seasons": final int? seasons,
          "episodes": final int? episodes,
        }) {
      return TitleSource(
        id: id,
        name: name,
        type: type,
        region: region,
        iosUri: iosUri == null ? null : Uri.parse(iosUri),
        androidUri: androidUri == null ? null : Uri.parse(androidUri),
        webUri: webUri == null ? null : Uri.parse(webUri),
        format: format,
        price: price,
        seasons: seasons,
        episodes: episodes,
      );
    }
    throw ArgumentError.value(json);
  }
}
