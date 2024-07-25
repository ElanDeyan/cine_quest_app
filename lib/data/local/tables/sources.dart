import 'package:drift/drift.dart';

part 'sources.g.dart';

class Sources extends Table {
  IntColumn get id => integer()();

  TextColumn get androidPlayStoreUrl => text().nullable()();

  TextColumn get androidScheme => text().nullable()();

  TextColumn get iosAppStoreUrl => text().nullable()();

  TextColumn get iosScheme => text().nullable()();

  TextColumn get logo100px => text().withLength(min: 1)();

  TextColumn get name => text().withLength(min: 1)();

  TextColumn get regions => text()();

  TextColumn get type => text().withLength(min: 1)();

  @override
  Set<Column> get primaryKey => {id};
}
