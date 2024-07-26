import 'package:cine_quest_app/constants/platforms.dart';
import 'package:cine_quest_app/helper/widgets/icon_with_label.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/providers/title_details_provider.dart';
import 'package:cine_quest_app/shared/title_poster.dart';
import 'package:flutter/material.dart';
import 'package:quiver/strings.dart';
import 'package:string_validator/string_validator.dart';
import 'package:url_launcher/url_launcher.dart';

class TitleDetailsBody extends StatelessWidget {
  const TitleDetailsBody({super.key, required this.titleDetails});

  final TitleDetails titleDetails;

  @override
  Widget build(BuildContext context) {
    return TitleDetailsProvider(
      titleDetails: titleDetails,
      child: SingleChildScrollView(
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
              titleDetails.title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (titleDetails.year != null)
                  Text(
                    titleDetails.year.toString(),
                  ),
                const SizedBox(
                  width: 20,
                ),
                IconWithLabel(
                  icon: const Icon(Icons.grade_outlined),
                  label: Text(titleDetails.criticScore.toString()),
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
                      for (final source in titleDetails.sources)
                        SimpleDialogOption(
                          child: Text(source.name),
                          onPressed: () async {
                            final platformUrl =
                                switch ((isWeb, isAndroid, isIOS)) {
                              (true, _, _) => source.webUrl,
                              (_, true, _) => source.androidUrl,
                              (_, _, true) => source.iosUrl,
                              _ => source.webUrl,
                            };

                            if (isNotBlank(platformUrl) &&
                                platformUrl!.isURL() &&
                                await canLaunchUrl(Uri.parse(platformUrl))) {
                              await launchUrl(Uri.parse(platformUrl));
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
                titleDetails.plotOverview,
                softWrap: true,
              ),
            ),
          ],
        ),
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
    final titleDetails = TitleDetailsProvider.of(context).titleDetails;

    return GestureDetector(
      onTap: () => showDialog<void>(
        context: context,
        builder: (context) => ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 274,
            maxWidth: 185,
          ),
          child: InteractiveViewer(
            child: TitlePoster(
              id: titleDetails.id,
              posterUrl: titleDetails.poster,
            ),
          ),
        ),
      ),
      child: TitlePoster(id: titleDetails.id, posterUrl: titleDetails.poster),
    );
  }
}

class _MovieBanner extends StatelessWidget {
  const _MovieBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final titleDetails = TitleDetailsProvider.of(context).titleDetails;

    return GestureDetector(
      onTap: () => showDialog<void>(
        context: context,
        builder: (context) => ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 439),
          child: InteractiveViewer(
            child: TitlePoster(
              id: titleDetails.id,
              posterUrl: titleDetails.backdrop,
            ),
          ),
        ),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 439),
        child: InteractiveViewer(
          child: TitlePoster(
            id: titleDetails.id,
            posterUrl: titleDetails.backdrop,
          ),
        ),
      ),
    );
  }
}
