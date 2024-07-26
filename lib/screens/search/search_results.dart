import 'package:cine_quest_app/models/autocomplete_search_result.dart';
import 'package:cine_quest_app/models/search_result.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/models/title_source.dart';
import 'package:cine_quest_app/providers/watch_mode_api_provider.dart';
import 'package:cine_quest_app/shared/title_poster.dart';
import 'package:cine_quest_app/types/dict.dart';
import 'package:cine_quest_app/types/json_map.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    final searchResults =
        Provider.of<WatchModeApiProvider>(context, listen: false)
            .autoCompleteSearch(query: query);

    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados da busca "$query"'),
      ),
      body: FutureBuilder(
        future: searchResults,
        initialData: Dict({"results": <JsonMap>[]}),
        builder: (context, snapshot) {
          return switch ((
            snapshot.connectionState,
            snapshot.hasError,
            snapshot.hasData
          )) {
            (ConnectionState.waiting, _, _) => const Center(
                child: CircularProgressIndicator(),
              ),
            (ConnectionState.active || ConnectionState.done, _, true)
                when snapshot.data!['results']!.isEmpty =>
              const Text('Nenhum resultado encontrado'),
            (ConnectionState.active || ConnectionState.done, _, true)
                when snapshot.data!['results']!.isNotEmpty =>
              _SearchResultsList(
                searchResults: AutoCompleteSearchResult(
                  results: snapshot.data!['results']!
                      .map(SearchResult.fromMap)
                      .toList(),
                ),
              ),
            _ => const Center(child: Text('Aconteceu um erro')),
          };
        },
      ),
    );
  }
}

class _SearchResultsList extends StatelessWidget {
  const _SearchResultsList({super.key, required this.searchResults});

  final AutoCompleteSearchResult searchResults;

  Future<void> _requestTitleData(
    BuildContext context,
    Future<TitleDetails> Function(int) getTitleDetails,
    Future<List<TitleSource>> Function(int) getTitleSources,
    int index,
  ) async {
    final [titleDetails as TitleDetails, titleSources as List<TitleSource>] =
        await Future.wait<Object>([
      getTitleDetails(searchResults.results[index].id),
      getTitleSources(searchResults.results[index].id),
    ]);

    final titleDetailsWithSources =
        titleDetails.copyWith(sources: titleSources);

    context.pushNamed('media', extra: titleDetailsWithSources);
  }

  @override
  Widget build(BuildContext context) {
    final watchModeApiProvider =
        Provider.of<WatchModeApiProvider>(context, listen: false);

    final getTitleDetails = watchModeApiProvider.titleDetails;
    final getTitleSources = watchModeApiProvider.titleSources;

    return ListView.builder(
      itemCount: searchResults.results.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () =>
            _requestTitleData(context, getTitleDetails, getTitleSources, index),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TitlePoster(
                id: searchResults.results[index].id,
                posterUrl: searchResults.results[index].imageUrl,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: _SearchResultsTileDetails(
                  searchResult: searchResults.results[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchResultsTileDetails extends StatelessWidget {
  const _SearchResultsTileDetails({
    super.key,
    required this.searchResult,
  });

  final SearchResult searchResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          searchResult.name,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(searchResult.year.toString()),
        const SizedBox(
          height: 10,
        ),
        Text('Relevância: ${searchResult.relevance}'),
      ],
    );
  }
}
