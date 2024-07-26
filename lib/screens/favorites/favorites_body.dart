import 'package:cine_quest_app/constants/box_names.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/providers/favorites.dart';
import 'package:cine_quest_app/shared/title_poster.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = Hive.box<TitleDetails>(favoritesBoxName).values.toList();

    return ListView.builder(
      itemCount: favorites.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Favorites(
          favorite: favorites[index],
          child: const _MovieTile(),
        ),
      ),
    );
  }
}

class _MovieTile extends StatelessWidget {
  const _MovieTile({super.key});

  @override
  Widget build(BuildContext context) {
    final favorite = Favorites.of(context).favorite;

    return InkWell(
      onTap: () => context.pushNamed('media', extra: favorite),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const _MoviePoster(),
            const SizedBox(
              width: 10.0,
            ),
            const _MovieTileDetails(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class _MovieTileDetails extends StatelessWidget {
  const _MovieTileDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favorite = Favorites.of(context).favorite;

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(favorite.title),
          const SizedBox(
            height: 5.0,
          ),
          const _MovieTileSubtitle(),
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favorite = Favorites.of(context).favorite;
    return TitlePoster(id: favorite.id, posterUrl: favorite.poster);
  }
}

class _MovieTileSubtitle extends StatelessWidget {
  const _MovieTileSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final favorite = Favorites.of(context).favorite;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.5,
          ),
          child: Text(
            favorite.plotOverview,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        if (favorite.year != null) Text('Year: ${favorite.year}'),
        const SizedBox(
          height: 5.0,
        ),
        const _MovieGenres(),
        const SizedBox(
          height: 5.0,
        ),
        _MovieCriticScore(score: favorite.criticScore),
      ],
    );
  }
}

class _MovieGenres extends StatelessWidget {
  const _MovieGenres({super.key});

  @override
  Widget build(BuildContext context) {
    final favorite = Favorites.of(context).favorite;

    return Wrap(
      spacing: 5.0,
      runSpacing: 5.0,
      children: [
        for (final genre in favorite.genreNames)
          Chip(
            labelPadding: const EdgeInsets.all(3.0),
            padding: const EdgeInsets.all(3.0),
            label: Text(
              genre,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
      ],
    );
  }
}

class _MovieCriticScore extends StatelessWidget {
  const _MovieCriticScore({super.key, required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.grade_outlined),
        const SizedBox(
          width: 5,
        ),
        Text('$score'),
      ],
    );
  }
}
