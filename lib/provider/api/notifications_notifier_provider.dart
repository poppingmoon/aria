import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../general_settings_notifier_provider.dart';
import '../notes_notifier_provider.dart';
import 'endpoints_provider.dart';
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

  List<INotificationsResponse> _foldNotifications(
    Iterable<INotificationsResponse> notifications,
  ) {
    return notifications.fold(
      [],
      (acc, notification) => switch (notification.type) {
        NotificationType.reaction => switch (acc.lastOrNull) {
            final previousNotification? => switch (previousNotification.type) {
                NotificationType.reaction => [
                    ...acc.toList().sublist(0, acc.length - 1),
                    if (previousNotification.note?.id == notification.note?.id)
                      previousNotification.copyWith(
                        id: notification.id,
                        type: NotificationType.reactionGrouped,
                        reaction: null,
                        user: null,
                        reactions: [
                          if (previousNotification
                              case INotificationsResponse(
                                :final user?,
                                :final reaction?
                              ))
                            INotificationsReaction(
                              user: user,
                              reaction: reaction,
                            ),
                          if (notification
                              case INotificationsResponse(
                                :final user?,
                                :final reaction?
                              ))
                            INotificationsReaction(
                              user: user,
                              reaction: reaction,
                            ),
                        ],
                      )
                    else ...[previousNotification, notification],
                  ],
                NotificationType.reactionGrouped => [
                    ...acc.toList().sublist(0, acc.length - 1),
                    if (previousNotification.note?.id == notification.note?.id)
                      previousNotification.copyWith(
                        id: notification.id,
                        reactions: [
                          ...?previousNotification.reactions,
                          if (notification
                              case INotificationsResponse(
                                :final user?,
                                :final reaction?
                              ))
                            INotificationsReaction(
                              user: user,
                              reaction: reaction,
                            ),
                        ],
                      )
                    else ...[previousNotification, notification],
                  ],
                _ => [...acc, notification],
              },
            _ => [...acc, notification],
          },
        NotificationType.renote => switch (acc.lastOrNull) {
            final previousNotification? => switch (previousNotification.type) {
                NotificationType.renote => [
                    ...acc.toList().sublist(0, acc.length - 1),
                    if (previousNotification.note?.renoteId ==
                        notification.note?.renoteId)
                      previousNotification.copyWith(
                        id: notification.id,
                        type: NotificationType.renoteGrouped,
                        userId: null,
                        user: null,
                        users: [previousNotification.user, notification.user]
                            .nonNulls
                            .toList(),
                      )
                    else ...[previousNotification, notification],
                  ],
                NotificationType.renoteGrouped => [
                    ...acc.toList().sublist(0, acc.length - 1),
                    if (previousNotification.note?.renoteId ==
                        notification.note?.renoteId)
                      previousNotification.copyWith(
                        id: notification.id,
                        users: [
                          ...?previousNotification.users,
                          notification.user,
                        ].nonNulls.toList(),
                      )
                    else ...[previousNotification, notification],
                  ],
                _ => [...acc, notification],
              },
            _ => [...acc, notification],
          },
        _ => [...acc, notification],
      },
    );
  }

  Future<Iterable<INotificationsResponse>> _fetchNotifications({
    String? untilId,
  }) async {
    Iterable<INotificationsResponse>? notifications;
    if (ref.read(generalSettingsNotifierProvider).useGroupedNotifications) {
      try {
        final endpoints =
            await ref.read(endpointsProvider(account.host).future);
        if (endpoints.contains('i/notifications-grouped')) {
          notifications =
              await ref.read(misskeyProvider(account)).i.notificationsGrouped(
                    INotificationsGroupedRequest(untilId: untilId, limit: 20),
                  );
        }
      } catch (_) {}
      if (notifications == null) {
        final response = await ref
            .read(misskeyProvider(account))
            .i
            .notifications(INotificationsRequest(untilId: untilId, limit: 20));
        notifications = _foldNotifications(response);
      }
    } else {
      notifications = await ref
          .read(misskeyProvider(account))
          .i
          .notifications(INotificationsRequest(untilId: untilId, limit: 20));
    }
    ref.read(notesNotifierProvider(account).notifier).addAll(
          notifications.map((notification) => notification.note).nonNulls,
        );
    return notifications.where((notification) => notification.id != untilId);
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
