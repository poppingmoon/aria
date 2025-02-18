import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'shared_preferences_provider.dart';

part 'misskey_theme_codes_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class MisskeyThemeCodesNotifier extends _$MisskeyThemeCodesNotifier {
  @override
  List<String> build() {
    final value = ref.watch(sharedPreferencesProvider).getStringList(_key);
    return value ?? [];
  }

  static const _key = 'themes';

  Future<void> _save() async {
    await ref.read(sharedPreferencesProvider).setStringList(_key, state);
  }

  Future<void> install(String code) async {
    state = [...state, code];
    await _save();
  }

  Future<void> uninstall(int index) async {
    state = [...state.sublist(0, index), ...state.sublist(index + 1)];
    await _save();
  }

  Future<void> import(List<String> codes) async {
    state = codes;
    await _save();
  }
}
