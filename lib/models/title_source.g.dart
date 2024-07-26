// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_source.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TitleSourceAdapter extends TypeAdapter<TitleSource> {
  @override
  final int typeId = 0;

  @override
  TitleSource read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TitleSource(
      sourceId: fields[0] as int,
      name: fields[1] as String,
      type: fields[2] as String,
      region: fields[3] as String,
      iosUrl: fields[4] as String?,
      androidUrl: fields[5] as String?,
      webUrl: fields[6] as String?,
      format: fields[7] as String,
      price: fields[8] as double?,
      seasons: fields[9] as int?,
      episodes: fields[10] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, TitleSource obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.sourceId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.region)
      ..writeByte(4)
      ..write(obj.iosUrl)
      ..writeByte(5)
      ..write(obj.androidUrl)
      ..writeByte(6)
      ..write(obj.webUrl)
      ..writeByte(7)
      ..write(obj.format)
      ..writeByte(8)
      ..write(obj.price)
      ..writeByte(9)
      ..write(obj.seasons)
      ..writeByte(10)
      ..write(obj.episodes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TitleSourceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
