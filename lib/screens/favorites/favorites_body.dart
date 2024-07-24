import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({super.key});

  @override
  Widget build(BuildContext context) {
    final sampleItems = List.generate(
      50,
      (index) => index,
    );

    return ListView.builder(
      itemCount: sampleItems.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: _MovieTile(
          id: index,
        ),
      ),
    );
  }
}

class _MovieTile extends StatelessWidget {
  const _MovieTile({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.goNamed('media', pathParameters: {'id': '$id'}),
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
    return const Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Title'),
          SizedBox(
            height: 5.0,
          ),
          _MovieTileSubtitle(),
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
    return Image.network(
      'https://cdn.watchmode.com/posters/03173903_poster_w185.jpg',
      width: 185,
      height: 274,
      loadingBuilder: (context, child, loadingProgress) => const ColoredBox(
        color: Colors.red,
        child: SizedBox(
          width: 185,
          height: 274,
        ),
      ),
      errorBuilder: (context, error, stackTrace) => const ColoredBox(
        color: Colors.red,
        child: SizedBox(
          width: 185,
          height: 274,
        ),
      ),
    );
  }
}

class _MovieTileSubtitle extends StatelessWidget {
  const _MovieTileSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.5,
          ),
          child: Text(
            faker.lorem.sentences(10).join(' '),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text('Year: ${faker.date.year(minYear: 2000, maxYear: 2024)}'),
        const SizedBox(
          height: 5.0,
        ),
        const _MovieGenres(),
        const SizedBox(
          height: 5.0,
        ),
        _MovieCriticScore(score: Random().nextInt(100)),
      ],
    );
  }
}

class _MovieGenres extends StatelessWidget {
  const _MovieGenres({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      runSpacing: 5.0,
      children: [
        for (final genre in faker.lorem.words(5))
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
