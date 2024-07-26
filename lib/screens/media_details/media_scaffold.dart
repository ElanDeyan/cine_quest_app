import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/screens/media_details/media_details_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TitleScaffold extends StatelessWidget {
  const TitleScaffold({super.key, required this.titleDetails});

  final TitleDetails titleDetails;

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
        titleDetails: titleDetails,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
