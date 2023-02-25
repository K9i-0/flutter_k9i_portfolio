import 'package:flutter/material.dart';
import 'package:flutter_k9i_portfolio/features/home/home_screen.dart';
import 'package:flutter_k9i_portfolio/features/settings/settings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF0553B1),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF0553B1),
      ),
      themeMode: ref.watch(settingsProvider.select((value) => value.themeMode)),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
