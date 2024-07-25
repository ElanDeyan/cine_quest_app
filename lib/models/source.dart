final class Source {
  final int id;
  final String name;
  final SourceType sourceType;
  final Uri logoUri;
  final Uri iosAppStoreUri;
  final Uri androidPlayStoreUri;
  final String androidScheme;
  final String iosScheme;
  final List<String> regions;

  Source({
    required this.id,
    required this.name,
    required this.sourceType,
    required this.logoUri,
    required this.iosAppStoreUri,
    required this.androidPlayStoreUri,
    required this.androidScheme,
    required this.iosScheme,
    required this.regions,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    if (json
        case {
          "id": final int id,
          "name": final String name,
          "type": final String sourceType,
          "logo_100px": final String logoUri,
          "ios_appstore_url": final String iosAppStoreUri,
          "android_playstore_url": final String androidPlayStoreUri,
          "android_scheme": final String androidScheme,
          "ios_scheme": final String iosScheme,
          "regions": final List<dynamic> regions
        }) {
      return Source(
        id: id,
        name: name,
        sourceType: SourceType.fromString(sourceType),
        logoUri: Uri.parse(logoUri),
        iosAppStoreUri: Uri.parse(iosAppStoreUri),
        androidPlayStoreUri: Uri.parse(androidPlayStoreUri),
        androidScheme: androidScheme,
        iosScheme: iosScheme,
        regions: regions.map((region) => '$region').toList(),
      );
    }
    throw const FormatException('Invalid source format');
  }

  @override
  String toString() {
    return 'Source{id: $id, name: $name, sourceType: $sourceType, logoUri: $logoUri, iosAppStoreUri: $iosAppStoreUri, androidPlayStoreUri: $androidPlayStoreUri, androidScheme: $androidScheme, iosScheme: $iosScheme, regions: $regions}';
  }
}

enum SourceType {
  sub,
  free,
  purchase,
  tve;

  const SourceType();

  factory SourceType.fromString(String string) => switch (string) {
        'sub' => SourceType.sub,
        'free' => SourceType.free,
        'purchase' => SourceType.purchase,
        'tve' => SourceType.tve,
        _ => throw ArgumentError.value(string),
      };
}
