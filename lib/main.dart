import 'package:flutter/material.dart';
import 'package:flutter_k9i_portfolio/common/shared_preferences.dart';
import 'package:flutter_k9i_portfolio/features/home/home_screen.dart';
import 'package:flutter_k9i_portfolio/features/settings/settings.dart';
import 'package:flutter_k9i_portfolio/resources/flutter_colors.dart';
import 'package:flutter_k9i_portfolio/resources/fonts.gen.dart';
import 'package:flutter_k9i_portfolio/resources/l10n/generated/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: "K9i's Portfolio",
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: FlutterBrandColors.flutterBlue.color,
        fontFamily: FontFamily.notoSansJP,
        fontFamilyFallback: const [FontFamily.notoColorEmoji],
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: FlutterBrandColors.flutterBlue.color,
        fontFamily: FontFamily.notoSansJP,
        fontFamilyFallback: const [FontFamily.notoColorEmoji],
      ),
      themeMode: ref.watch(settingsProvider.select((value) => value.themeMode)),
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
