import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/owned_chat_rooms_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_avatar.dart';

class ChatOwnedRooms extends ConsumerWidget {
  const ChatOwnedRooms({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rooms = ref.watch(ownedChatRoomsNotifierProvider(account));
    final style = DefaultTextStyle.of(context).style;
    final theme = Theme.of(context);

    return PaginatedListView(
      paginationState: rooms,
      itemBuilder:
          (context, room) => Card.filled(
            color: theme.colorScheme.surface,
            margin: EdgeInsets.zero,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () => context.push('/$account/chat/room/${room.id}'),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: Row(
                  spacing: 8.0,
                  children: [
                    UserAvatar(
                      account: account,
                      user: room.owner,
                      size: 40.0,
                      onTap:
                          () => context.push('/$account/users/${room.ownerId}'),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 4.0,
                        children: [
                          Text(room.name),
                          if (room.description.isNotEmpty)
                            Text(
                              room.description,
                              style: style.apply(
                                fontSizeFactor: 0.9,
                                color: theme.colorScheme.onSurface.withValues(
                                  alpha: 0.8,
                                ),
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      onRefresh:
          () => ref.refresh(ownedChatRoomsNotifierProvider(account).future),
      loadMore:
          (skipError) => ref
              .read(ownedChatRoomsNotifierProvider(account).notifier)
              .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.chat_.noRooms,
    );
  }
}
