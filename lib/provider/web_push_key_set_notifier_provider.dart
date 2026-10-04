import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../model/account.dart';
import 'notification_settings_repository_provider.dart';
import 'shared_preferences_provider.dart';

part 'web_push_key_set_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class WebPushKeySetNotifier extends _$WebPushKeySetNotifier {
  @override
  FutureOr<WebPushKeySet?> build(Account account) async {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return await ref
          .watch(notificationSettingsRepositoryProvider)
          .loadKeySet(account);
    } else {
      final keySetBase64 = await _migrate() ?? await _storage.read(key: _key);
      if (keySetBase64 == null) {
        return null;
      }
      return await WebPushKeySet.deserialize(keySetBase64);
    }
  }

  String get _key => '$account/webPushKeySet';

  static const _storage = FlutterSecureStorage();

  Future<String?> _migrate() async {
    final prefs = ref.read(sharedPreferencesProvider);
    final keySetBase64 = prefs.getString(_key);
    if (keySetBase64 != null) {
      await _storage.write(key: _key, value: keySetBase64);
      await prefs.remove(_key);
    }
    return keySetBase64;
  }

  Future<void> save(WebPushKeySet keySet) async {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      await ref
          .read(notificationSettingsRepositoryProvider)
          .saveKeySet(account, keySet);
    } else {
      await _storage.write(key: _key, value: keySet.serialize);
    }
    state = AsyncValue.data(keySet);
  }

  Future<void> delete() async {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      await ref
          .read(notificationSettingsRepositoryProvider)
          .deleteKeySet(account);
    } else {
      await _storage.delete(key: _key);
    }
    state = const AsyncValue.data(null);
  }
}
