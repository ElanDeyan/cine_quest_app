import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/providers/database_provider.dart';
import 'package:cine_quest_app/screens/media_details/media_details_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class TitleScaffold extends StatefulWidget {
  const TitleScaffold({super.key, required this.titleDetails});

  final TitleDetails titleDetails;

  @override
  State<TitleScaffold> createState() => _TitleScaffoldState();
}

class _TitleScaffoldState extends State<TitleScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media details'),
        leading: BackButton(
          onPressed: () =>
              context.canPop() ? context.pop() : context.goNamed('home'),
        ),
      ),
      body: TitleDetailsBody(
        titleDetails: widget.titleDetails,
      ),
      floatingActionButton: Consumer<DatabaseProvider>(
        builder: (context, database, child) => FloatingActionButton(
          onPressed: () {
            if (database.containsFavoriteKey(widget.titleDetails.id)) {
              database.deleteFavorite(widget.titleDetails.id);
            } else {
              database.putFavorite(widget.titleDetails.id, widget.titleDetails);
            }
            setState(() {});
          },
          child: database.containsFavoriteKey(widget.titleDetails.id)
              ? const Tooltip(message: 'Favorito', child: Icon(Icons.favorite))
              : const Tooltip(
                  message: 'Não favorito',
                  child: Icon(Icons.favorite_outline),
                ),
        ),
      ),
    );
  }
}
