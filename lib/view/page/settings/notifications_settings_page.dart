import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:uuid/uuid.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../../provider/push_subscription_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/sw_register_dialog.dart';

class NotificationsSettingsPage extends ConsumerWidget {
  const NotificationsSettingsPage({super.key, required this.account});

  final Account account;

  Future<void> _subscribe(WidgetRef ref) async {
    final id = const Uuid().v4();
    const String endpoint = '';
    String? fcmToken;
    String? apnsToken;

    final keySet = await WebPushKeySet.newKeyPair();
    if (!ref.context.mounted) return;

    // Register the endpoint and keys to the Misskey server.
    final response = await showDialog<SwRegisterResponse>(
      context: ref.context,
      builder: (context) => SwRegisterDialog(
        account: account,
        request: SwRegisterRequest(
          endpoint: endpoint,
          auth: keySet.publicKey.auth,
          publickey: keySet.publicKey.p256dh,
        ),
      ),
    );
    if (!ref.context.mounted || response == null) return;

    // Subscribe and save the endpoint.
    await futureWithDialog(
      ref.context,
      ref.read(pushSubscriptionNotifierProvider(account).notifier).subscribe(
            id: id,
            fcmToken: fcmToken,
            apnsToken: apnsToken,
            keySet: keySet,
            response: response,
          ),
    );
  }

  Future<void> _unsubscribe(WidgetRef ref) {
    return futureWithDialog(
      ref.context,
      ref
          .read(pushSubscriptionNotifierProvider(account).notifier)
          .unsubscribe(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final endpoint = ref.watch(pushSubscriptionNotifierProvider(account));
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
    final isPushNotificationSupported = switch (defaultTargetPlatform) {
      TargetPlatform.android || TargetPlatform.iOS => meta?.swPublickey != null,
      _ => false,
    };

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.notifications)),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              t.misskey.pushNotification,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
              ),
            ),
          ),
          SwitchListTile(
            title: Text(t.misskey.subscribePushNotification),
            value: endpoint != null,
            onChanged: endpoint != null
                ? (_) => _unsubscribe(ref)
                : i != null && isPushNotificationSupported
                    ? (_) => _subscribe(ref)
                    : null,
          ),
        ],
      ),
    );
  }
}
