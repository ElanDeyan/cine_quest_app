import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_dev/api/migrations.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

Future<File> get databaseFile async {
  final appDir = await getApplicationDocumentsDirectory();
  final dbPath = p.joinAll([appDir.path, 'cine_quest_local.db']);

  return File(dbPath);
}

DatabaseConnection connection() => DatabaseConnection.delayed(
      Future(() async {
        if (defaultTargetPlatform == TargetPlatform.android) {
          await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();

          final cacheBase = (await getTemporaryDirectory()).path;

          sqlite3.tempDirectory = cacheBase;
        }

        return NativeDatabase.createBackgroundConnection(await databaseFile);
      }),
    );

Future<void> validateDatabaseSchema(GeneratedDatabase database) async {
  if (kDebugMode) {
    await VerifySelf(database).validateDatabaseSchema();
  }
}
