import 'package:cine_quest_app/models/genre.dart';
import 'package:cine_quest_app/models/source.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/models/title_source.dart';
import 'package:cine_quest_app/repository/enums/sorted_by_criteria.dart';
import 'package:cine_quest_app/types/dict.dart';
import 'package:cine_quest_app/types/json_map.dart';

abstract interface class IWatchModeApi {
  Future<void> refresh();

  Future<Dict<List<JsonMap>>> autoCompleteSearch({
    int type = 2,
    required String query,
  });

  Future<TitleDetails> titleDetails(int id);

  Future<List<TitleSource>> titleSources(int id);

  Future<List<JsonMap>> allTitlesPaginated({
    int page = 1,
    int manyPerPage = 50,
    SortedByCriteria sortedBy = SortedByCriteria.releaseDateDesc,
  });

  Future<List<Source>> get sources;

  Future<List<Genre>> get genres;
}
