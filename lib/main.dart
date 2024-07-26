import 'package:cine_quest_app/constants/box_names.dart';
import 'package:cine_quest_app/env/env.dart';
import 'package:cine_quest_app/models/title_details.dart';
import 'package:cine_quest_app/models/title_source.dart';
import 'package:cine_quest_app/providers/watch_mode_api_provider.dart';
import 'package:cine_quest_app/routes/routes.dart';
import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _setupHive();

  await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 5));

  final watchModeApiProvider =
      WatchModeApiProvider(apiKey: Env.watchModeApiKey);

  runApp(_MyAppProvider(watchModeApiProvider: watchModeApiProvider));
}

Future<void> _setupHive() async {
  if (!kIsWeb) {
    Hive.init((await getApplicationDocumentsDirectory()).path);
  }

  Hive.registerAdapter<TitleDetails>(TitleDetailsAdapter());
  Hive.registerAdapter<TitleSource>(TitleSourceAdapter());

  await Hive.openBox<TitleDetails>(favoritesBoxName);
}

final class _MyAppProvider extends StatelessWidget {
  const _MyAppProvider({required this.watchModeApiProvider});

  final WatchModeApiProvider watchModeApiProvider;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: watchModeApiProvider,
      builder: (context, child) => child!,
      child: const MainApp(),
    );
  }
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
