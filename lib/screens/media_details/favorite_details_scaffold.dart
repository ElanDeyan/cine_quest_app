import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoriteDetailsScaffold extends StatelessWidget {
  const FavoriteDetailsScaffold({super.key, required this.favoriteId});

  final int favoriteId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite details'),
        leading: BackButton(
          onPressed: () =>
              context.canPop() ? context.pop() : context.goNamed('home'),
        ),
      ),
      body: const Placeholder(
        child: Text('Favorites detail body'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
