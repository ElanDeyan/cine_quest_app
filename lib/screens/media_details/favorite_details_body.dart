import 'package:cine_quest_app/helper/widgets/icon_with_label.dart';
import 'package:flutter/material.dart';

class FavoriteDetailsBody extends StatelessWidget {
  const FavoriteDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
        bottom: kFloatingActionButtonMargin + kBottomNavigationBarHeight,
      ),
      child: Column(
        children: [
          const _MovieDetailsHeader(),
          const SizedBox(
            height: 92.5 + 10,
          ),
          Text(
            favorite.title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(favorite.year.toString()),
              const SizedBox(
                width: 20,
              ),
              IconWithLabel(
                icon: const Icon(Icons.grade_outlined),
                label: Text(favorite.criticScore.toString()),
                gap: 5,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: FilledButton.icon(
              onPressed: () => showDialog<void>(
                context: context,
                builder: (context) => SimpleDialog(
                  title: const Text('Escolha sua plataforma'),
                  children: [
                    for (final platformId in favorite.sources.split(','))
                      SimpleDialogOption(
                        child: Text(platformId),
                        onPressed: () {},
                      ),
                  ],
                ),
              ),
              label: const Text('Assistir agora'),
              icon: const Icon(Icons.play_arrow_outlined),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              favorite.plotOverview,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

class _MovieDetailsHeader extends StatelessWidget {
  const _MovieDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        _MovieBanner(),
        Positioned(
          bottom: -92.5,
          child: _MoviePoster(),
        ),
      ],
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favorite = FavoriteProvider.of(context).favorite;

    return GestureDetector(
      onTap: () => showDialog<void>(
        context: context,
        builder: (context) => InteractiveViewer(
          child: Image.network(
            favorite.poster,
            width: 185,
            height: 274,
            errorBuilder: (context, error, stackTrace) => ColoredBox(
              color: Colors.yellow,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 439),
                child: const SizedBox.expand(),
              ),
            ),
          ),
        ),
      ),
      child: Image.network(
        favorite.poster,
        width: 185,
        height: 274,
        errorBuilder: (context, error, stackTrace) => ColoredBox(
          color: Colors.yellow,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 439),
            child: const SizedBox.expand(),
          ),
        ),
      ),
    );
  }
}

class _MovieBanner extends StatelessWidget {
  const _MovieBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favorite = FavoriteProvider.of(context).favorite;

    return GestureDetector(
      onTap: () => showDialog<void>(
        context: context,
        builder: (context) => InteractiveViewer(
          child: Image.network(
            favorite.backdrop,
            errorBuilder: (context, error, stackTrace) => ColoredBox(
              color: Colors.red,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 439),
                child: const SizedBox.expand(),
              ),
            ),
          ),
        ),
      ),
      child: Image.network(
        favorite.backdrop,
        errorBuilder: (context, error, stackTrace) => ColoredBox(
          color: Colors.red,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 439),
            child: const SizedBox.expand(),
          ),
        ),
      ),
    );
  }
}
