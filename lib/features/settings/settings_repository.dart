import 'package:flutter/material.dart';
import 'package:flutter_k9i_portfolio/common/shared_preferences.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_repository.g.dart';

@riverpod
SettingsRepository settingsRepository(SettingsRepositoryRef ref) =>
    SettingsRepository(ref);

class SettingsRepository {
  const SettingsRepository(this._ref);
  final Ref _ref;

  ThemeMode get themeMode {
    final themeModeIndex = _ref
        .read(sharedPreferencesProvider)
        .getInt(SharedPreferencesKeys.themeMode.name);

    if (themeModeIndex == null) {
      return ThemeMode.system;
    }
    return ThemeMode.values[themeModeIndex];
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await _ref
        .read(sharedPreferencesProvider)
        .setInt(SharedPreferencesKeys.themeMode.name, themeMode.index);
  }
}
