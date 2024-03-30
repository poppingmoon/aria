import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../general_settings_notifier_provider.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'notifications_notifier_provider.g.dart';

@riverpod
class NotificationsNotifier extends _$NotificationsNotifier {
  @override
  FutureOr<PaginationState<INotificationsResponse>> build(
    Account account,
  ) async {
    final response = await _fetchNotifications();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<INotificationsResponse>> _fetchNotifications({
    String? untilId,
  }) async {
    final notifications =
        ref.read(generalSettingsNotifierProvider).useGroupedNotifications
            ? await ref.read(misskeyProvider(account)).i.notificationsGrouped(
                  INotificationsGroupedRequest(
                    untilId: untilId,
                    limit: 20,
                  ),
                )
            : await ref.read(misskeyProvider(account)).i.notifications(
                  INotificationsRequest(
                    untilId: untilId,
                    limit: 20,
                  ),
                );
    ref.read(notesNotifierProvider(account).notifier).addAll(
          notifications.map((notification) => notification.note).nonNulls,
        );
    return notifications;
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response =
          await _fetchNotifications(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
