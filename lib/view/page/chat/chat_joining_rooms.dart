import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/chat_memberships_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_avatar.dart';

class ChatJoiningRooms extends ConsumerWidget {
  const ChatJoiningRooms({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberships = ref.watch(chatMembershipsNotifierProvider(account));
    final style = DefaultTextStyle.of(context).style;
    final theme = Theme.of(context);

    return PaginatedListView(
      paginationState: memberships,
      itemBuilder:
          (context, membership) => Card.filled(
            color: theme.colorScheme.surface,
            margin: EdgeInsets.zero,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap:
                  () =>
                      context.push('/$account/chat/room/${membership.roomId}'),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: Row(
                  spacing: 8.0,
                  children: [
                    if (membership.room?.owner case final user?)
                      UserAvatar(
                        account: account,
                        user: user,
                        size: 40.0,
                        onTap: () => context.push('/$account/users/${user.id}'),
                      ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 4.0,
                        children: [
                          if (membership.room?.name case final name?)
                            Text(name),
                          if (membership.room?.description
                              case final description?
                              when description.isNotEmpty)
                            Text(
                              description,
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
          () => ref.refresh(chatMembershipsNotifierProvider(account).future),
      loadMore:
          (skipError) => ref
              .read(chatMembershipsNotifierProvider(account).notifier)
              .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.chat_.noRooms,
    );
  }
}
