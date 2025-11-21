import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../model/account.dart';
import 'shared_preferences_provider.dart';

part 'web_push_key_set_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class WebPushKeySetNotifier extends _$WebPushKeySetNotifier {
  @override
  FutureOr<WebPushKeySet?> build(Account account) {
    final keySetBase64 = ref.watch(sharedPreferencesProvider).getString(_key);
    if (keySetBase64 == null) {
      return null;
    }
    return WebPushKeySet.deserialize(keySetBase64);
  }

  String get _key => '$account/webPushKeySet';

  Future<void> save(WebPushKeySet keySet) async {
    await ref.read(sharedPreferencesProvider).setString(_key, keySet.serialize);
    state = AsyncValue.data(keySet);
  }

  Future<void> delete() async {
    await ref.read(sharedPreferencesProvider).remove(_key);
    state = const AsyncValue.data(null);
  }
}
