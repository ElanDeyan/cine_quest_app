import 'dart:collection';

import 'package:cine_quest_app/constants/platforms.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/models/title_source.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

final class DatabaseProvider extends ChangeNotifier {
  DatabaseProvider({required HiveInterface database}) : _database = database;

  static const favoriteTitlesBoxName = 'favoriteTitlesBox';

  final HiveInterface _database;

  Future<void> init() async {
    if (!isWeb) {
      _database.init((await getApplicationDocumentsDirectory()).path);
    }

    _database.registerAdapter(TitleDetailsAdapter());
    _database.registerAdapter(TitleSourceAdapter());

    await _openBoxes();
  }

  Future<void> _openBoxes() async {
    await _database.openBox<TitleDetails>(favoriteTitlesBoxName);
  }

  Box<TitleDetails> get _favoritesBox => _database.box(favoriteTitlesBoxName);

  bool get hasFavorites => _favoritesBox.isEmpty;

  UnmodifiableListView<TitleDetails> get favorites =>
      UnmodifiableListView(_favoritesBox.values);

  Future<void> putFavorite(int id, TitleDetails favorite) async {
    await _favoritesBox.put(id, favorite);
    notifyListeners();
  }

  Future<void> deleteFavorite(int id) async {
    await _favoritesBox.delete(id);
    notifyListeners();
  }

  bool containsFavoriteKey(int id) => _favoritesBox.containsKey(id);
}
