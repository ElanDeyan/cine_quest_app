import 'package:cine_quest_app/constants/box_names.dart';
import 'package:cine_quest_app/helper/widgets/horizontal_list.dart';
import 'package:cine_quest_app/helper/widgets/section.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/shared/title_poster.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

class FavoritesSection extends StatefulWidget {
  const FavoritesSection({
    super.key,
  });

  @override
  State<FavoritesSection> createState() => _FavoritesSectionState();
}

class _FavoritesSectionState extends State<FavoritesSection> {
  final _favorites = Hive.box<TitleDetails>(favoritesBoxName).values.toList();

  @override
  Widget build(BuildContext context) {
    return Section(
      header: Text(
        'Favoritos',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      content: SizedBox(
        height: 300,
        child: HorizontalList(
          items: _favorites,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => context.pushNamed('media', extra: _favorites[index]),
            child: TitlePoster(
              id: _favorites[index].id,
              posterUrl: _favorites[index].poster,
            ),
          ),
        ),
      ),
    );
  }
}
