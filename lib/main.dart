import 'package:flutter/material.dart';
import 'package:flutter_k9i_portfolio/common/shared_preferences.dart';
import 'package:flutter_k9i_portfolio/features/home/home_screen.dart';
import 'package:flutter_k9i_portfolio/features/route_error/route_error_screen.dart';
import 'package:flutter_k9i_portfolio/features/settings/settings.dart';
import 'package:flutter_k9i_portfolio/resources/assets.gen.dart';
import 'package:flutter_k9i_portfolio/resources/flutter_colors.dart';
import 'package:flutter_k9i_portfolio/resources/fonts.gen.dart';
import 'package:flutter_k9i_portfolio/resources/l10n/generated/l10n.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // URLから `#` を除去
  usePathUrlStrategy();
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
    return MaterialApp.router(
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
      routerConfig: _router,
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
    );
  }
}
