import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences.g.dart';

@riverpod
SharedPreferences sharedPreferences(SharedPreferencesRef ref) =>
    throw UnimplementedError();

/// キー被りを防ぐためのenum
/// Keyとしてはenumのnameを使う
enum SharedPreferencesKeys {
  themeMode,
}
