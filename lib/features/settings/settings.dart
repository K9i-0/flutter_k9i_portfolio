import 'package:flutter/material.dart';
import 'package:flutter_k9i_portfolio/features/settings/settings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

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
    return SettingsState(
      themeMode: ref.watch(settingsRepositoryProvider).themeMode,
    );
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await ref.read(settingsRepositoryProvider).setThemeMode(themeMode);
    state = state.copyWith(themeMode: themeMode);
  }
}
