import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'message_opened_app_notifier_provider.dart';

part 'push_notification_notifier_provider.g.dart';

@riverpod
class PushNotificationNotifier extends _$PushNotificationNotifier {
  @override
  Stream<PushNotification> build() async* {}

  void add(PushNotification notification) {
    if (state.valueOrNull != notification) {
      state = AsyncValue.data(notification);
      ref.read(messageOpenedAppNotifierProvider.notifier).markShouldRedirect();
    }
  }
}
