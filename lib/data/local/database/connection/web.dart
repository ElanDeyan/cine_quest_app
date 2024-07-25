import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:flutter/material.dart';

DatabaseConnection connection() => DatabaseConnection.delayed(
      Future(() async {
        final db = await WasmDatabase.open(
          databaseName: 'cine_quest_db',
          sqlite3Uri: Uri.parse('sqlite3.wasm'),
          driftWorkerUri: Uri.parse('drift_worker.js'),
        );

        if (db.missingFeatures.isNotEmpty) {
          debugPrint(
            'Using ${db.chosenImplementation} due to unsupported '
            'browser features: ${db.missingFeatures.join(', ')}',
          );
        }

        return db.resolvedExecutor;
      }),
    );

Future<void> validateDatabaseSchema(GeneratedDatabase database) async {}
