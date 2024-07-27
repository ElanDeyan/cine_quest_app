import 'dart:collection';

import 'package:cine_quest_app/helper/widgets/horizontal_list.dart';
import 'package:cine_quest_app/helper/widgets/section.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/providers/database_provider.dart';
import 'package:cine_quest_app/shared/title_poster.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class FavoritesSection extends StatelessWidget {
  const FavoritesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Section(
      header: Text(
        'Favoritos',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      content: Selector<DatabaseProvider, UnmodifiableListView<TitleDetails>>(
        selector: (context, database) => database.favorites,
        builder: (context, favorites, consumerChild) => favorites.isEmpty
            ? const Center(
                child: Text('Você ainda não tem favoritos.'),
              )
            : HorizontalList(
                items: favorites,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => context.pushNamed(
                    'media',
                    extra: favorites[index],
                  ),
                  child: TitlePoster(
                    id: favorites[index].id,
                    posterUrl: favorites[index].poster,
                  ),
                ),
              ),
      ),
    );
  }
}
