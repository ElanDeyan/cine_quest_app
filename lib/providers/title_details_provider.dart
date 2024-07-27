import 'package:cine_quest_app/models/title_details.dart';
import 'package:flutter/material.dart';

final class TitleDetailsProvider extends InheritedWidget {
  const TitleDetailsProvider({required this.titleDetails, required super.child});

  final TitleDetails titleDetails;

  static TitleDetailsProvider? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<TitleDetailsProvider>();

  static TitleDetailsProvider of(BuildContext context) {
    assert(maybeOf(context) != null, 'Title details not found in context');
    return maybeOf(context)!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
