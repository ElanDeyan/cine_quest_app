import 'package:cine_quest_app/routes/routes_constants.dart';
import 'package:cine_quest_app/screens/destinations_data.dart';
import 'package:cine_quest_app/screens/main_scaffold.dart';
import 'package:cine_quest_app/screens/media_details/media_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  errorBuilder: (context, state) => Placeholder(
    child: Text(state.error?.message ?? ''),
  ),
  initialLocation: root,
  routes: <RouteBase>[
    GoRoute(
      path: root,
      name: 'home',
      builder: (context, state) => const MainScaffold(
        destinationsData: mainScaffoldDestinations,
      ),
    ),
    GoRoute(
      path: '${root}favorites',
      name: 'favorites',
      builder: (context, state) => const MainScaffold(
        initialLocationIndex: 1,
        destinationsData: mainScaffoldDestinations,
      ),
    ),
    GoRoute(
      path: '${root}media/:id',
      name: 'media',
      builder: (context, state) => MediaScaffold(
        mediaId: int.parse(state.pathParameters['id']!),
      ),
    ),
  ],
);
