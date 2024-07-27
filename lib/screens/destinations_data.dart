import 'package:flutter/material.dart';

typedef DestinationsShape = ({
  Icon selectedIcon,
  Icon outlinedIcon,
  Widget label,
  String name,
});

typedef DestinationsData = ({
  DestinationsShape home,
  DestinationsShape favorites,
});

const DestinationsData mainScaffoldDestinations = (
  home: (
    selectedIcon: Icon(Icons.home),
    outlinedIcon: Icon(Icons.home_outlined),
    label: Text('Início'),
    name: 'Início'
  ),
  favorites: (
    selectedIcon: Icon(Icons.favorite),
    outlinedIcon: Icon(Icons.favorite_outline),
    label: Text('Favoritos'),
    name: 'Favoritos'
  ),
);
