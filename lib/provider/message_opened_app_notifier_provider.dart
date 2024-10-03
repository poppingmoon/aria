import 'dart:async';

import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'notes_notifier_provider.dart';
import 'push_notification_notifier_provider.dart';
import 'user_ids_notifier_provider.dart';

part 'message_opened_app_notifier_provider.g.dart';

// ignore: provider_dependencies
@Riverpod(keepAlive: true)
class MessageOpenedAppNotifier extends _$MessageOpenedAppNotifier {
  @override
  bool build() {
    return false;
  }

  void markShouldRedirect() {
    state = true;
  }

  Future<String?> redirect() async {
    if (!state) {
      return null;
    }
    await Future(() => state = false);

    final notification =
        await ref.read(pushNotificationNotifierProvider.future);
    final userId = notification.userId;
    if (userId == null) {
      return null;
    }
    final account = ref
        .read(userIdsNotifierProvider)
        .entries
        .firstWhereOrNull((e) => e.value == userId)
        ?.key;
    if (account == null) {
      return null;
    }

    try {
      if (notification.body?.note?.id case final noteId?) {
        unawaited(
          ref.read(notesNotifierProvider(account).notifier).show(noteId),
        );
        return '/$account/notes/$noteId';
      } else if (notification.body?.userId case final userId?) {
        return '/$account/users/$userId';
      }
    } catch (_) {}
    return '/$account/notifications';
  }
}
