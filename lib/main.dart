import 'package:cine_quest_app/constants/box_names.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/models/title_source.dart';
import 'package:cine_quest_app/routes/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _setupHive();

  runApp(const MainApp());
}

Future<void> _setupHive() async {
  if (!kIsWeb) {
    Hive.init((await getApplicationDocumentsDirectory()).path);
  }

  Hive.registerAdapter<TitleDetails>(TitleDetailsAdapter());
  Hive.registerAdapter<TitleSource>(TitleSourceAdapter());

  await Hive.openBox<TitleDetails>(favoritesBoxName);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          brightness: Brightness.dark,
        ),
      ),
      title: 'Cine quest',
    );
  }
}
