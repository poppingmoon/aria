import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'shared_preferences_provider.dart';

part 'aiscript_storage_notifier_provider.g.dart';

@riverpod
class AiscriptStorageNotifier extends _$AiscriptStorageNotifier {
  @override
  Map<String, String> build(Account account) {
    final value = ref.watch(sharedPreferencesProvider).getString(_key);
    if (value != null) {
      final json = jsonDecode(value);
      if (json is Map<String, dynamic>) {
        return json.map((key, value) => MapEntry(key, value.toString()));
      }
    }
    return {};
  }

  String get _key => '$account/aiscript';

  Future<void> save(String key, String value) async {
    state = {
      ...state,
      key: value,
    };
    await ref
        .read(sharedPreferencesProvider)
        .setString(_key, jsonEncode(state));
  }

  String? load(String key) {
    return state[key];
  }
}
