// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TitleDetailsAdapter extends TypeAdapter<TitleDetails> {
  @override
  final int typeId = 1;

  @override
  TitleDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TitleDetails(
      id: fields[0] as int,
      title: fields[1] as String,
      originalTitle: fields[2] as String,
      plotOverview: fields[3] as String,
      type: fields[4] as String,
      runtimeMinutes: fields[5] as int,
      year: fields[6] as int,
      endYear: fields[7] as int,
      releaseDate: fields[8] as String,
      imdbId: fields[9] as String,
      tmdbId: fields[10] as int,
      tmdbType: fields[11] as String,
      genres: (fields[12] as List).cast<int>(),
      genreNames: (fields[13] as List).cast<String>(),
      userRating: fields[14] as double,
      criticScore: fields[15] as int,
      usRating: fields[16] as String,
      poster: fields[17] as String,
      backdrop: fields[18] as String,
      originalLanguage: fields[19] as String,
      similarTitles: (fields[20] as List).cast<int>(),
      networks: (fields[21] as List).cast<int>(),
      networkNames: (fields[22] as List).cast<String>(),
      trailer: fields[23] as String,
      trailerThumbnail: fields[24] as String,
      relevancePercentile: fields[25] as double,
      sources: (fields[26] as List).cast<TitleSource>(),
    );
  }

  @override
  void write(BinaryWriter writer, TitleDetails obj) {
    writer
      ..writeByte(27)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.originalTitle)
      ..writeByte(3)
      ..write(obj.plotOverview)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.runtimeMinutes)
      ..writeByte(6)
      ..write(obj.year)
      ..writeByte(7)
      ..write(obj.endYear)
      ..writeByte(8)
      ..write(obj.releaseDate)
      ..writeByte(9)
      ..write(obj.imdbId)
      ..writeByte(10)
      ..write(obj.tmdbId)
      ..writeByte(11)
      ..write(obj.tmdbType)
      ..writeByte(12)
      ..write(obj.genres)
      ..writeByte(13)
      ..write(obj.genreNames)
      ..writeByte(14)
      ..write(obj.userRating)
      ..writeByte(15)
      ..write(obj.criticScore)
      ..writeByte(16)
      ..write(obj.usRating)
      ..writeByte(17)
      ..write(obj.poster)
      ..writeByte(18)
      ..write(obj.backdrop)
      ..writeByte(19)
      ..write(obj.originalLanguage)
      ..writeByte(20)
      ..write(obj.similarTitles)
      ..writeByte(21)
      ..write(obj.networks)
      ..writeByte(22)
      ..write(obj.networkNames)
      ..writeByte(23)
      ..write(obj.trailer)
      ..writeByte(24)
      ..write(obj.trailerThumbnail)
      ..writeByte(25)
      ..write(obj.relevancePercentile)
      ..writeByte(26)
      ..write(obj.sources);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TitleDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
