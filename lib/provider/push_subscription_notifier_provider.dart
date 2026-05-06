import 'package:flutter/foundation.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:unifiedpush/unifiedpush.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../model/account.dart';
import 'api/misskey_provider.dart';
import 'dio_provider.dart';
import 'shared_preferences_provider.dart';
import 'web_push_key_set_notifier_provider.dart';

part 'push_subscription_notifier_provider.g.dart';

@riverpod
class PushSubscriptionNotifier extends _$PushSubscriptionNotifier {
  @override
  String? build(Account account) {
    return ref.watch(sharedPreferencesProvider).getString(_key);
  }

  String get _key => '$account/push-subscription';

  String get _isProxyKey => '$account/push-subscription-is-proxy';

  Future<void> subscribe({
    WebPushKeySet? keySet,
    required SwRegisterResponse response,
  }) async {
    final endpoint = response.endpoint;
    if (keySet != null) {
      await ref
          .read(webPushKeySetNotifierProvider(account).notifier)
          .save(keySet);
    }
    await ref.read(sharedPreferencesProvider).setString(_key, endpoint);
    state = endpoint;
  }

  Future<void> unsubscribe() async {
    final endpoint = state;
    if (endpoint == null) return;
    if (defaultTargetPlatform == TargetPlatform.android) {
      await UnifiedPush.unregister(account.toString());
    }
    final isProxy = ref.read(sharedPreferencesProvider).getBool(_isProxyKey);
    final keySet = await ref.read(
      webPushKeySetNotifierProvider(account).future,
    );
    if (isProxy ?? keySet == null) {
      await ref.read(dioProvider).delete<void>(endpoint);
    }
    await ref
        .read(misskeyProvider(account))
        .sw
        .unregister(SwUnregisterRequest(endpoint: endpoint));
    if (keySet != null) {
      await ref.read(webPushKeySetNotifierProvider(account).notifier).delete();
    }
    await ref.read(sharedPreferencesProvider).remove(_key);
    if (ref.read(sharedPreferencesProvider).containsKey(_isProxyKey)) {
      await ref.read(sharedPreferencesProvider).remove(_isProxyKey);
    }
    state = null;
  }
}
