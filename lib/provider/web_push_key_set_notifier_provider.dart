import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../model/account.dart';
import 'notification_settings_repository_provider.dart';
import 'shared_preferences_provider.dart';

part 'web_push_key_set_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class WebPushKeySetNotifier extends _$WebPushKeySetNotifier {
  @override
  FutureOr<WebPushKeySet?> build(Account account) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return ref
          .watch(notificationSettingsRepositoryProvider)
          .loadKeySet(account);
    } else {
      final keySetBase64 = ref.watch(sharedPreferencesProvider).getString(_key);
      if (keySetBase64 == null) {
        return null;
      }
      return WebPushKeySet.deserialize(keySetBase64);
    }
  }

  String get _key => '$account/webPushKeySet';

  Future<void> save(WebPushKeySet keySet) async {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      await ref
          .read(notificationSettingsRepositoryProvider)
          .saveKeySet(account, keySet);
    } else {
      await ref
          .read(sharedPreferencesProvider)
          .setString(_key, keySet.serialize);
    }
    state = AsyncValue.data(keySet);
  }

  Future<void> delete() async {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      await ref
          .read(notificationSettingsRepositoryProvider)
          .deleteKeySet(account);
    } else {
      await ref.read(sharedPreferencesProvider).remove(_key);
    }
    state = const AsyncValue.data(null);
  }
}
