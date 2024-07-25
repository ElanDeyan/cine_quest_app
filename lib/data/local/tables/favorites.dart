import 'package:drift/drift.dart';

part 'favorites.g.dart';

class Favorites extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text().withLength(min: 1)();
  TextColumn get originalTitle => text().withLength(min: 1)();
  TextColumn get plotOverview => text().withLength(min: 1)();
  TextColumn get type => text().withLength(min: 1)();
  IntColumn get runtimeMinutes => integer()();
  IntColumn get year => integer()();
  IntColumn get endYear => integer().nullable()();
  DateTimeColumn get releaseDate => dateTime()();
  TextColumn get genres => text().withLength(min: 1)();
  TextColumn get genreNames => text().withLength(min: 1)();
  RealColumn get userRating => real()();
  IntColumn get criticScore => integer()();
  TextColumn get usRating => text().withLength(min: 1)();
  TextColumn get poster => text().withLength(min: 1)();
  TextColumn get backdrop => text().withLength(min: 1)();
  TextColumn get originalLanguage => text().withLength(min: 1)();
  TextColumn get similarTitles => text()();
  TextColumn get networks => text()();
  TextColumn get networkNames => text()();
  TextColumn get trailer => text().withLength(min: 1)();
  TextColumn get trailerThumbnail => text().withLength(min: 1)();
  RealColumn get relevancePercentile => real()();
  TextColumn get sources => text()();

  @override
  Set<Column> get primaryKey => {id};
}
