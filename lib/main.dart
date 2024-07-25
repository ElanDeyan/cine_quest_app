import 'package:cine_quest_app/env/env.dart';
import 'package:cine_quest_app/providers/watch_mode_api_provider.dart';
import 'package:cine_quest_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    _MyAppProvider(
      apiProvider: WatchModeApiProvider(apiKey: Env.watchModeApiKey),
    ),
  );
}

final class _MyAppProvider extends StatelessWidget {
  const _MyAppProvider({required this.apiProvider});

  final WatchModeApiProvider apiProvider;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: apiProvider,
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
