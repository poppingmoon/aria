import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/chat_invitations_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/permission_denied_error_widget.dart';
import '../../widget/time_widget.dart';
import '../../widget/user_avatar.dart';
import '../../widget/user_sheet.dart';
import '../../widget/username_widget.dart';

class ChatInvitations extends ConsumerWidget {
  const ChatInvitations({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invitations = ref.watch(chatInvitationsNotifierProvider(account));
    final style = DefaultTextStyle.of(context).style;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    if (invitations.error case MisskeyException(code: 'PERMISSION_DENIED')) {
      return RefreshIndicator(
        onRefresh:
            () => ref.refresh(chatInvitationsNotifierProvider(account).future),
        child: LayoutBuilder(
          builder:
              (context, constraint) => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: constraint.maxHeight,
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      padding: const EdgeInsets.all(16.0),
                      child: PermissionDeniedErrorWidget(account: account),
                    ),
                  ),
                ),
              ),
        ),
      );
    }

    return PaginatedListView(
      paginationState: invitations,
      itemBuilder:
          (context, invitation) => Card.filled(
            color: colors.panel,
            margin: EdgeInsets.zero,
            clipBehavior: Clip.hardEdge,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4.0,
                children: [
                  Row(
                    spacing: 8.0,
                    children: [
                      if (invitation.room?.owner case final user?)
                        UserAvatar(
                          account: account,
                          user: user,
                          size: 40.0,
                          onTap:
                              () => context.push('/$account/users/${user.id}'),
                        ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 4.0,
                          children: [
                            Row(
                              spacing: 2.0,
                              children: [
                                if (invitation.room?.owner case final user?)
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      child: InkWell(
                                        onTap:
                                            () => context.push(
                                              '/$account/users/${user.id}',
                                            ),
                                        onLongPress:
                                            () => showUserSheet(
                                              context: context,
                                              account: account,
                                              userId: user.id,
                                            ),
                                        child: UsernameWidget(
                                          account: account,
                                          user: user,
                                          trailingSpans: [
                                            const WidgetSpan(
                                              child: SizedBox(width: 4.0),
                                            ),
                                            TextSpan(
                                              text: '@${user.username}',
                                              style: TextStyle(
                                                color: colors.fg.withValues(
                                                  alpha: 0.8,
                                                ),
                                              ),
                                            ),
                                          ],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                DefaultTextStyle.merge(
                                  style: style.apply(fontSizeFactor: 0.9),
                                  child: TimeWidget(time: invitation.createdAt),
                                ),
                              ],
                            ),
                            if (invitation.room?.name case final name?)
                              Text.rich(
                                TextSpan(
                                  text: name,
                                  children: [
                                    const WidgetSpan(
                                      child: SizedBox(width: 4.0),
                                    ),
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: Tooltip(
                                        message: t.misskey.chat_.roomChat,
                                        child: Icon(
                                          Icons.meeting_room,
                                          size: style.fontSize,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (invitation.room?.description
                                case final description?)
                              Text(
                                description.isNotEmpty
                                    ? description
                                    : '(${t.misskey.noDescription})',
                                style: style.apply(
                                  fontSizeFactor: 0.9,
                                  color: colors.fg.withValues(alpha: 0.8),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 4.0),
                  Wrap(
                    spacing: 4.0,
                    runSpacing: 4.0,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () async {
                          final result = await futureWithDialog(
                            context,
                            ref
                                .read(
                                  chatInvitationsNotifierProvider(
                                    account,
                                  ).notifier,
                                )
                                .join(invitation.roomId)
                                .then((_) => ()),
                          );
                          if (!context.mounted) return;
                          if (result != null) {
                            await context.push(
                              '/$account/chat/room/${invitation.roomId}',
                            );
                          }
                        },
                        icon: const Icon(Icons.add),
                        label: Text(t.misskey.chat_.join),
                      ),
                      ElevatedButton.icon(
                        onPressed:
                            () => futureWithDialog(
                              context,
                              ref
                                  .read(
                                    chatInvitationsNotifierProvider(
                                      account,
                                    ).notifier,
                                  )
                                  .ignore(invitation.roomId)
                                  .then((_) => ()),
                            ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: colors.error,
                          backgroundColor: colors.buttonBg,
                          iconColor: colors.error,
                        ),
                        icon: const Icon(Icons.close),
                        label: Text(t.misskey.chat_.ignore),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      onRefresh:
          () => ref.refresh(chatInvitationsNotifierProvider(account).future),
      loadMore:
          (skipError) => ref
              .read(chatInvitationsNotifierProvider(account).notifier)
              .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.chat_.noInvitations,
    );
  }
}
