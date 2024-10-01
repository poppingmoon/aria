import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:unifiedpush/unifiedpush.dart';
import 'package:unifiedpush_ui/unifiedpush_ui.dart';
import 'package:uuid/uuid.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../../../constant/fcm_token_prefix.dart';
import '../../../constant/misskey_web_push_proxy_url.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../../provider/apns_push_connector_provider.dart';
import '../../../provider/push_subscription_notifier_provider.dart';
import '../../../provider/unified_push_endpoint_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/message_dialog.dart';
import '../../dialog/sw_register_dialog.dart';

class NotificationsSettingsPage extends ConsumerWidget {
  const NotificationsSettingsPage({super.key, required this.account});

  final Account account;

  Future<void> _subscribe(WidgetRef ref) async {
    final id = const Uuid().v4();
    final String endpoint;
    String? fcmToken;
    String? apnsToken;

    // Request permissions and get the endpoint and the token.
    if (defaultTargetPlatform == TargetPlatform.android) {
      final result = await FlutterLocalNotificationsPlugin()
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
      if (!ref.context.mounted) return;
      if (!(result ?? false)) {
        await showMessageDialog(ref.context, t.misskey.permissionDeniedError);
        return;
      }

      await UnifiedPush.removeNoDistributorDialogACK();
      if (!ref.context.mounted) return;
      await UnifiedPushUi(
        ref.context,
        [account.toString()],
        _UnifiedPushFunctions(),
      ).registerAppWithDialog();
      if (!ref.context.mounted) return;
      final completer = Completer<String>();
      final sub = ref.listenManual(
        unifiedPushEndpointNotifierProvider(account.toString()),
        (_, endpoint) => endpoint != null ? completer.complete(endpoint) : null,
        fireImmediately: true,
      );
      final unifiedPushEndpoint = await futureWithDialog(
        ref.context,
        completer.future.timeout(const Duration(seconds: 5)),
      );
      sub.close();
      if (unifiedPushEndpoint == null) return;
      if (unifiedPushEndpoint.startsWith(fcmTokenPrefix)) {
        endpoint = '$misskeyWebPushProxyUrl/subscriptions/$id';
        fcmToken = unifiedPushEndpoint.substring(fcmTokenPrefix.length);
      } else {
        endpoint = unifiedPushEndpoint;
      }
    } else {
      final connector = ref.read(apnsPushConnectorProvider);
      final result = await connector.requestNotificationPermissions();
      if (!ref.context.mounted) return;
      if (!result) {
        await showMessageDialog(ref.context, t.misskey.permissionDeniedError);
        return;
      }

      endpoint = '$misskeyWebPushProxyUrl/subscriptions/$id';
      final completer = Completer<String>();

      void callback() {
        if (connector.token.value case final token?
            when !completer.isCompleted) {
          completer.complete(token);
        }
      }

      callback();
      connector.token.addListener(callback);
      apnsToken = await futureWithDialog(
        ref.context,
        completer.future.timeout(const Duration(seconds: 5)),
      );
      connector.token.removeListener(callback);
      if (apnsToken == null) return;
    }

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

class _UnifiedPushFunctions extends UnifiedPushFunctions {
  @override
  Future<String?> getDistributor() {
    return UnifiedPush.getDistributor();
  }

  @override
  Future<List<String>> getDistributors() {
    return UnifiedPush.getDistributors();
  }

  @override
  Future<void> registerApp(String instance) {
    return UnifiedPush.registerApp(instance);
  }

  @override
  Future<void> saveDistributor(String distributor) {
    return UnifiedPush.saveDistributor(distributor);
  }
}
