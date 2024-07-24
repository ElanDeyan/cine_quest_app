import 'dart:math';

import 'package:cine_quest_app/helper/widgets/icon_with_label.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaDetailsBody extends StatelessWidget {
  const MediaDetailsBody({super.key, required this.mediaId});

  final int mediaId;

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
            'Movie title',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                faker.date
                    .dateTime(minYear: 2009, maxYear: 2024)
                    .year
                    .toString(),
              ),
              const SizedBox(
                width: 20,
              ),
              IconWithLabel(
                icon: const Icon(Icons.grade_outlined),
                label: Text(Random().nextInt(100).toString()),
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
                    SimpleDialogOption(
                      child: const Text('Plataforma A'),
                      onPressed: () async {
                        if (await canLaunchUrl(
                          Uri.parse(
                            'http://www.netflix.com/title/70143836',
                          ),
                        )) {
                          await launchUrl(
                            Uri.parse(
                              'http://www.netflix.com/title/70143836',
                            ),
                          );
                        }
                      },
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
              faker.lorem.sentences(10).join(' '),
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
    return GestureDetector(
      onTap: () => showDialog<void>(
        context: context,
        builder: (context) => InteractiveViewer(
          child: Image.network(
            'https://images.pexels.com/photos/316398/pexels-photo-316398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
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
        'https://images.pexels.com/photos/316398/pexels-photo-316398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
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
    return GestureDetector(
      onTap: () => showDialog<void>(
        context: context,
        builder: (context) => InteractiveViewer(
          child: Image.network(
            'https://images.pexels.com/photos/139309/pexels-photo-139309.jpeg',
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
        'https://images.pexels.com/photos/139309/pexels-photo-139309.jpeg',
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
