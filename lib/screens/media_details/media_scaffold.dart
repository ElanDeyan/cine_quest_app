import 'package:cine_quest_app/screens/media_details/media_details_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MediaScaffold extends StatelessWidget {
  const MediaScaffold({super.key, required this.mediaId});

  final int mediaId;

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
      body: MediaDetailsBody(mediaId: mediaId),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
