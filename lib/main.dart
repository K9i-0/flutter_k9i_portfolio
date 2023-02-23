import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main App'),
          actions: const [],
        ),
        body: Center(
          child: // テーマの切り替え
              ListTile(
            title: const Text('テーマ'),
            trailing: DropdownButton<ThemeMode>(
              value: ref
                  .watch(settingsProvider.select((value) => value.themeMode)),
              onChanged: (value) {
                if (value != null) {
                  ref.read(settingsProvider.notifier).setThemeMode(value);
                }
              },
              items: const [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text('端末の設定を使う'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text('ライト'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text('ダーク'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required ThemeMode themeMode,
  }) = _SettingsState;
}

@riverpod
class Settings extends _$Settings {
  @override
  SettingsState build() {
    return const SettingsState(
      themeMode: ThemeMode.system,
    );
  }

  void setThemeMode(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }
}
