import 'package:cine_quest_app/screens/home/favorites_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final _searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchBar(
            controller: _searchBarController,
            onSubmitted: (value) => _searchBarController.text = value,
            trailing: [
              IconButton(
                onPressed: () => context.pushNamed(
                  'search',
                  queryParameters: {'query': _searchBarController.text},
                ),
                icon: const Icon(Icons.search_outlined),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          const FavoritesSection(),
          const SizedBox(
            height: 10,
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Made with the watchmode API'),
          ),
        ],
      ),
    );
  }
}
