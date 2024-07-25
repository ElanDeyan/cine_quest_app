import 'package:cine_quest_app/data/local/database/connection/connection.dart'
    as impl;
import 'package:cine_quest_app/data/local/tables/favorites.dart';
import 'package:cine_quest_app/data/local/tables/sources.dart';
import 'package:drift/drift.dart';

part 'local_database.g.dart';

@DriftDatabase(tables: [Favorites, Sources])
final class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(impl.connection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async => await m.createAll(),
      );
}
