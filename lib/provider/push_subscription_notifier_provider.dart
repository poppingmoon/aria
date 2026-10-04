import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:unifiedpush/unifiedpush.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../model/account.dart';
import 'api/misskey_provider.dart';
import 'apns_token_provider.dart';
import 'dio_provider.dart';
import 'shared_preferences_provider.dart';
import 'unified_push_endpoint_notifier_provider.dart';
import 'web_push_key_set_notifier_provider.dart';
import 'web_push_public_key_set_notifier_provider.dart';

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
    required ({String auth, String publicKey}) publicKeySet,
    WebPushKeySet? keySet,
    required SwRegisterResponse response,
  }) async {
    await ref
        .read(webPushPublicKeySetNotifierProvider(account).notifier)
        .save(publicKeySet);
    if (keySet != null) {
      await ref
          .read(webPushKeySetNotifierProvider(account).notifier)
          .save(keySet);
    }
    final endpoint = response.endpoint;
    await ref.read(sharedPreferencesProvider).setString(_key, endpoint);
    state = endpoint;
  }

  Future<({String auth, String publicKey})> _getPublicKeys() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      final instance = account.toString();
      final endpoint = ref.read(unifiedPushEndpointNotifierProvider(instance));
      if (endpoint?.pubKeySet case final pubKeySet?) {
        return (auth: pubKeySet.auth, publicKey: pubKeySet.pubKey);
      }
      final pubKeySet = await UnifiedPush.getPublicKeySet(instance);
      return (auth: pubKeySet!.auth, publicKey: pubKeySet.pubKey);
    } else {
      final sub = ref.listen(apnsTokenProvider, (_, _) {});
      final String apnsToken;
      try {
        apnsToken = await ref
            .read(apnsTokenProvider.future)
            .timeout(const Duration(seconds: 10));
      } finally {
        sub.close();
      }
      final response = await ref
          .read(dioProvider)
          .query<Map<String, dynamic>>(state!, data: {'apnsToken': apnsToken});
      return (
        auth: response.data!['auth'] as String,
        publicKey: response.data!['publicKey'] as String,
      );
    }
  }

  Future<void> unsubscribe() async {
    final endpoint = state;
    if (endpoint == null) return;
    final isProxy = ref.read(sharedPreferencesProvider).getBool(_isProxyKey);
    final publicKeySet = await ref.read(
      webPushPublicKeySetNotifierProvider(account).future,
    );
    final keySet = await ref.read(
      webPushKeySetNotifierProvider(account).future,
    );

    String? auth = publicKeySet?.auth ?? keySet?.publicKey.auth;
    String? publicKey = publicKeySet?.publicKey ?? keySet?.publicKey.p256dh;
    if (auth == null || publicKey == null) {
      try {
        final keys = await _getPublicKeys();
        auth = keys.auth;
        publicKey = keys.publicKey;
      } catch (_) {}
    }
    if (defaultTargetPlatform == TargetPlatform.android) {
      await UnifiedPush.unregister(account.toString());
    } else if (isProxy ?? keySet == null) {
      await ref.read(dioProvider).delete<void>(endpoint);
    }
    await ref
        .read(misskeyProvider(account))
        .sw
        .unregister(
          SwUnregisterRequest(
            endpoint: endpoint,
            auth: auth ?? '',
            publickey: publicKey ?? '',
          ),
        );

    if (publicKeySet != null) {
      await ref
          .read(webPushPublicKeySetNotifierProvider(account).notifier)
          .delete();
    }
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
