import 'package:cine_quest_app/env/env.dart';
import 'package:cine_quest_app/providers/database_provider.dart';
import 'package:cine_quest_app/providers/watch_mode_api_provider.dart';
import 'package:cine_quest_app/routes/routes.dart';
import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 5));

  final watchModeApiProvider =
      WatchModeApiProvider(apiKey: Env.watchModeApiKey);

  final localDatabase = DatabaseProvider(database: Hive);

  await localDatabase.init();

  runApp(
    _MyAppProvider(
      watchModeApiProvider: watchModeApiProvider,
      database: localDatabase,
    ),
  );
}

final class _MyAppProvider extends StatelessWidget {
  const _MyAppProvider({
    required this.watchModeApiProvider,
    required this.database,
  });

  final WatchModeApiProvider watchModeApiProvider;
  final DatabaseProvider database;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: watchModeApiProvider),
        ChangeNotifierProvider.value(value: database),
      ],
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
