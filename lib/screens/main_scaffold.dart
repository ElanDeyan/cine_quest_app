import 'dart:convert';

import 'package:cine_quest_app/constants/box_names.dart';
import 'package:cine_quest_app/mocks/title_details_response.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/screens/destinations_data.dart';
import 'package:cine_quest_app/screens/favorites/favorites_body.dart';
import 'package:cine_quest_app/screens/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({
    super.key,
    this.initialLocationIndex = 0,
    required this.destinationsData,
  });

  final int initialLocationIndex;
  final DestinationsData destinationsData;

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  late int _selectedIndex;
  List<TitleDetails> _favorites =
      Hive.box<TitleDetails>(favoritesBoxName).values.toList();

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialLocationIndex;
  }

  Widget get bodyContent => switch (_selectedIndex) {
        0 => const HomeBody(),
        1 => const FavoritesBody(),
        _ => const Placeholder(
            child: Text('Unsupported location index'),
          )
      };

  void _updateIndex(int index) => setState(() {
        _selectedIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.sizeOf(context);

    final isCompactWindowSize = windowSize.width < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cine quest'),
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        leading: const Icon(Icons.movie_creation_outlined),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: !isCompactWindowSize
          ? _NotCompactWindowSizeBody(
              bodyContent: bodyContent,
              selectedIndex: _selectedIndex,
              destinations: widget.destinationsData,
              onDestinationSelected: _updateIndex,
            )
          : bodyContent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final favoritesBox = Hive.box<TitleDetails>(favoritesBoxName);

          favoritesBox.add(
            TitleDetails.fromMap(
              jsonDecode(titleDetailsResponse) as Map<String, dynamic>,
            ),
          );

          setState(() {
            _favorites = favoritesBox.values.toList();
          });
        },
      ),
      bottomNavigationBar: isCompactWindowSize
          ? _MainNavigationBar(
              selectedIndex: _selectedIndex,
              onDestinationSelected: _updateIndex,
              destinations: widget.destinationsData,
            )
          : null,
    );
  }
}

class _NotCompactWindowSizeBody extends StatelessWidget {
  const _NotCompactWindowSizeBody({
    super.key,
    required this.bodyContent,
    required this.selectedIndex,
    required this.destinations,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final Widget bodyContent;
  final DestinationsData destinations;
  final void Function(int)? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          _MainNavigationRail(
            selectedIndex: selectedIndex,
            destinations: destinations,
            onDestinationSelected: onDestinationSelected,
          ),
          const VerticalDivider(
            width: 5.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: bodyContent,
            ),
          ),
        ],
      ),
    );
  }
}

class _MainNavigationRail extends StatelessWidget {
  const _MainNavigationRail({
    super.key,
    required this.selectedIndex,
    required this.destinations,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final DestinationsData destinations;
  final void Function(int)? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      destinations: _destinationsFrom(destinations),
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      labelType: NavigationRailLabelType.all,
    );
  }

  List<NavigationRailDestination> _destinationsFrom(
    DestinationsData destinationsData,
  ) {
    final (:home, :favorites) = destinationsData;

    return [
      NavigationRailDestination(
        icon: home.outlinedIcon,
        selectedIcon: home.selectedIcon,
        label: home.label,
      ),
      NavigationRailDestination(
        icon: favorites.outlinedIcon,
        selectedIcon: favorites.selectedIcon,
        label: favorites.label,
      ),
    ];
  }
}

final class _MainNavigationBar extends StatelessWidget {
  const _MainNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
  });

  final int selectedIndex;
  final void Function(int)? onDestinationSelected;
  final DestinationsData destinations;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: _destinationsFrom(destinations),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
    );
  }

  List<NavigationDestination> _destinationsFrom(
    DestinationsData destinationsData,
  ) {
    final (:home, :favorites) = destinationsData;

    return [
      NavigationDestination(
        icon: home.outlinedIcon,
        selectedIcon: home.selectedIcon,
        label: home.name,
      ),
      NavigationDestination(
        icon: favorites.outlinedIcon,
        selectedIcon: favorites.selectedIcon,
        label: favorites.name,
      ),
    ];
  }
}
