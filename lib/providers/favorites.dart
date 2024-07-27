import 'package:cine_quest_app/models/title_details.dart';
import 'package:flutter/material.dart';

final class Favorites extends InheritedWidget {
  const Favorites({required this.favorite, required super.child});

  final TitleDetails favorite;

  static Favorites? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Favorites>();

  static Favorites of(BuildContext context) {
    assert(maybeOf(context) != null, 'Favorite not found in context');
    return maybeOf(context)!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
