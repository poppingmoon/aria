import 'package:flutter/foundation.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:unifiedpush/unifiedpush.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../constant/misskey_web_push_proxy_url.dart';
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

  Future<void> subscribe({
    required String id,
    String? fcmToken,
    String? apnsToken,
    required WebPushKeySet keySet,
    required SwRegisterResponse response,
  }) async {
    final endpoint = response.endpoint;
    if (endpoint.startsWith(misskeyWebPushProxyUrl)) {
      final jwk = await (await keySet.privateKey.privKey).exportJsonWebKey();
      await ref
          .read(dioProvider)
          .post<Map<String, dynamic>>(
            '$misskeyWebPushProxyUrl/subscriptions',
            data: {
              'id': id,
              if (fcmToken != null) 'fcmToken': fcmToken,
              if (apnsToken != null) 'apnsToken': apnsToken,
              'auth': keySet.publicKey.auth,
              'publicKey': keySet.publicKey.p256dh,
              'privateKey': jwk['d'],
              'vapidKey': response.key,
            },
          );
    } else {
      await ref
          .read(webPushKeySetNotifierNotifierProvider(account).notifier)
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
    final keySet = await ref.read(
      webPushKeySetNotifierNotifierProvider(account).future,
    );
    if (keySet == null) {
      await ref.read(dioProvider).delete<void>(endpoint);
    }
    await ref
        .read(misskeyProvider(account))
        .sw
        .unregister(SwUnregisterRequest(endpoint: endpoint));
    if (keySet != null) {
      await ref
          .read(webPushKeySetNotifierNotifierProvider(account).notifier)
          .delete();
    }
    await ref.read(sharedPreferencesProvider).remove(_key);
    state = null;
  }
}
