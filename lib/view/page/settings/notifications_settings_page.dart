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

import '../../../constant/max_content_width.dart';
import '../../../constant/misskey_web_push_proxy_url.dart';
import '../../../constant/notification_channel_id.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../../provider/apns_push_connector_provider.dart';
import '../../../provider/push_subscription_notifier_provider.dart';
import '../../../provider/unified_push_endpoint_notifier_provider.dart';
import '../../../provider/user_ids_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/message_dialog.dart';
import '../../dialog/sw_register_dialog.dart';
import '../../widget/account_settings_scaffold.dart';

class NotificationsSettingsPage extends ConsumerWidget {
  const NotificationsSettingsPage({super.key, required this.account});

  final Account account;

  Future<void> _subscribe(WidgetRef ref) async {
    final id = const Uuid().v4();
    final String endpoint;
    ({String auth, String publicKey})? publicKeySet;
    String? fcmToken;
    String? apnsToken;

    // Request permissions and get the endpoint and the token.
    if (defaultTargetPlatform == TargetPlatform.android) {
      final result = await futureWithDialog(
        ref.context,
        FlutterLocalNotificationsPlugin()
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.requestNotificationsPermission(),
      );
      if (!ref.context.mounted) return;
      if (!(result ?? false)) {
        await showMessageDialog(ref.context, t.misskey.permissionDeniedError);
        return;
      }

      final meta = await futureWithDialog(
        ref.context,
        ref.read(metaNotifierProvider(account.host).future),
      );
      if (meta == null) return;

      if (!ref.context.mounted) return;
      final instances = [account.toString()];
      await UnifiedPushUi(
        ref.context,
        instances,
        _UnifiedPushFunctions(vapid: meta.swPublickey),
      ).registerAppWithDialog();
      if (!ref.context.mounted) return;
      final completer = Completer<PushEndpoint>();
      final sub = ref.listenManual(
        unifiedPushEndpointNotifierProvider(account.toString()),
        (_, endpoint) => endpoint != null ? completer.complete(endpoint) : null,
        fireImmediately: true,
      );
      final unifiedPushEndpoint = await futureWithDialog(
        ref.context,
        completer.future.timeout(const Duration(seconds: 10)),
      );
      sub.close();
      if (unifiedPushEndpoint == null) return;
      endpoint = unifiedPushEndpoint.url;
      if (unifiedPushEndpoint.pubKeySet case final pubKeySet?) {
        publicKeySet = (auth: pubKeySet.auth, publicKey: pubKeySet.pubKey);
      }
    } else {
      final connector = ref.read(apnsPushConnectorProvider);
      final result = await futureWithDialog(
        ref.context,
        connector.requestNotificationPermissions(),
      );
      if (!ref.context.mounted) return;
      if (!(result ?? false)) {
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
        completer.future.timeout(const Duration(seconds: 10)),
      );
      connector.token.removeListener(callback);
      if (apnsToken == null) return;
    }

    WebPushKeySet? keySet;
    final SwRegisterRequest request;
    if (publicKeySet case (:final auth, :final publicKey)) {
      request = SwRegisterRequest(
        endpoint: endpoint,
        auth: auth,
        publickey: publicKey,
      );
    } else {
      keySet = await WebPushKeySet.newKeyPair();
      request = SwRegisterRequest(
        endpoint: endpoint,
        auth: keySet.publicKey.auth,
        publickey: keySet.publicKey.p256dh,
      );
    }
    if (!ref.context.mounted) return;

    // Register the endpoint and keys to the Misskey server.
    final response = await showDialog<SwRegisterResponse>(
      context: ref.context,
      builder: (context) =>
          SwRegisterDialog(account: account, request: request),
    );
    if (!ref.context.mounted || response == null) {
      if (defaultTargetPlatform == TargetPlatform.android) {
        await UnifiedPush.unregister(account.toString());
        ref
            .read(
              unifiedPushEndpointNotifierProvider(account.toString()).notifier,
            )
            .remove();
      }
      return;
    }

    // Subscribe and save the endpoint.
    await futureWithDialog(
      ref.context,
      ref
          .read(pushSubscriptionNotifierProvider(account).notifier)
          .subscribe(
            id: id,
            fcmToken: fcmToken,
            apnsToken: apnsToken,
            keySet: keySet,
            response: response,
          ),
    );

    if (defaultTargetPlatform == TargetPlatform.android) {
      final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin()
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >();
      await flutterLocalNotificationsPlugin?.createNotificationChannelGroup(
        AndroidNotificationChannelGroup(account.toString(), account.toString()),
      );
      await flutterLocalNotificationsPlugin?.createNotificationChannel(
        AndroidNotificationChannel(
          notificationChannelId,
          t.misskey.notifications,
          groupId: account.toString(),
        ),
      );
    }
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
    final theme = Theme.of(context);

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.notifications)),
      body: ListView(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                t.misskey.pushNotification,
                style: TextStyle(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.subscribePushNotification),
                value: endpoint != null,
                onChanged: endpoint != null
                    ? (_) => _unsubscribe(ref)
                    : i != null && isPushNotificationSupported
                    ? (_) async {
                        await _subscribe(ref);
                        await ref
                            .read(userIdsNotifierProvider.notifier)
                            .add(account, i.id);
                      }
                    : null,
              ),
            ),
          ),
        ],
      ),
      selectedDestination: AccountSettingsDestination.notifications,
    );
  }
}

class _UnifiedPushFunctions implements UnifiedPushFunctions {
  const _UnifiedPushFunctions({this.vapid});

  final String? vapid;

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
    return UnifiedPush.register(instance: instance, vapid: vapid);
  }

  @override
  Future<void> saveDistributor(String distributor) {
    return UnifiedPush.saveDistributor(distributor);
  }
}
