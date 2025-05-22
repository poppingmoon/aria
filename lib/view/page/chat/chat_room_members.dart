import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../constant/inifite_scroll_extent_threshold.dart';
import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/chat_room_invitations_notifier_provider.dart';
import '../../../provider/api/chat_room_members_notifier_provider.dart';
import '../../../provider/api/chat_room_notifier_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/user_select_dialog.dart';
import '../../widget/pagination_bottom_widget.dart';
import '../../widget/user_preview.dart';
import '../../widget/user_sheet.dart';

class ChatRoomMembers extends HookConsumerWidget {
  const ChatRoomMembers({
    super.key,
    required this.account,
    required this.roomId,
  });

  final Account account;
  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final room = ref
        .watch(chatRoomNotifierProvider(account, roomId))
        .valueOrNull;
    final isMyRoom = room?.owner.username == account.username;
    final memberships = ref.watch(
      chatRoomMembersNotifierProvider(account, roomId),
    );
    final invitations = isMyRoom
        ? ref.watch(chatRoomInvitationsNotifierProvider(account, roomId))
        : null;
    final enableInfiniteScroll = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableInfiniteScroll,
      ),
    );
    final controller = useScrollController();
    final isAtBottom = useState(false);
    useEffect(() {
      void callback() {
        if (controller.position.extentAfter < infiniteScrollExtentThreshold) {
          if (!isAtBottom.value) {
            ref
                .read(chatRoomMembersNotifierProvider(account, roomId).notifier)
                .loadMore();
            if (isMyRoom) {
              ref
                  .read(
                    chatRoomInvitationsNotifierProvider(
                      account,
                      roomId,
                    ).notifier,
                  )
                  .loadMore();
            }
            isAtBottom.value = true;
          }
        } else {
          isAtBottom.value = false;
        }
      }

      if (enableInfiniteScroll) {
        controller.addListener(callback);
      }
      return () {
        if (enableInfiniteScroll) {
          controller.removeListener(callback);
        }
      };
    }, []);
    if (enableInfiniteScroll) {
      ref.listen(
        chatRoomMembersNotifierProvider(
          account,
          roomId,
        ).select((memberships) => memberships.valueOrNull),
        (prev, next) {
          if ((prev?.items.length ?? 0) < (next?.items.length ?? 0) ||
              ((prev?.isLastLoaded ?? false) &&
                  (!(next?.isLastLoaded ?? true)))) {
            Future.delayed(const Duration(milliseconds: 10), () {
              if (controller.position.extentAfter <
                      infiniteScrollExtentThreshold ||
                  (next?.items.length ?? 0) < 20) {
                ref
                    .read(
                      chatRoomMembersNotifierProvider(account, roomId).notifier,
                    )
                    .loadMore();
              }
            });
          }
        },
      );
      if (isMyRoom) {
        ref.listen(
          chatRoomInvitationsNotifierProvider(
            account,
            roomId,
          ).select((invitations) => invitations.valueOrNull),
          (prev, next) {
            if ((prev?.items.length ?? 0) < (next?.items.length ?? 0) ||
                ((prev?.isLastLoaded ?? false) &&
                    (!(next?.isLastLoaded ?? true)))) {
              Future.delayed(const Duration(milliseconds: 10), () {
                if (controller.position.extentAfter <
                    infiniteScrollExtentThreshold) {
                  ref
                      .read(
                        chatRoomInvitationsNotifierProvider(
                          account,
                          roomId,
                        ).notifier,
                      )
                      .loadMore();
                }
              });
            }
          },
        );
      }
    }
    final theme = Theme.of(context);

    return RefreshIndicator(
      onRefresh: () => Future.wait([
        ref.refresh(chatRoomNotifierProvider(account, roomId).future),
        ref.refresh(chatRoomMembersNotifierProvider(account, roomId).future),
        if (isMyRoom)
          ref.refresh(
            chatRoomInvitationsNotifierProvider(account, roomId).future,
          ),
      ]),
      child: ListTileTheme(
        data: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          tileColor: theme.colorScheme.surface,
        ),
        child: ListView(
          controller: controller,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            const SizedBox(height: 8.0),
            if (isMyRoom) ...[
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: ElevatedButton(
                    onPressed: () async {
                      final user = await selectUser(
                        context,
                        account,
                        localOnly: true,
                      );
                      if (!context.mounted) return;
                      if (user != null) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(
                                chatRoomInvitationsNotifierProvider(
                                  account,
                                  roomId,
                                ).notifier,
                              )
                              .invite(user.id),
                        );
                      }
                    },
                    child: Text(t.misskey.chat_.inviteUser),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
            ],
            if (room?.owner case final user?)
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: UserPreview(
                    account: account,
                    user: user,
                    trailing: Tooltip(
                      message: t.aria.owner,
                      child: const Icon(Symbols.crown, fill: 1.0),
                    ),
                    onTap: () => context.push('/$account/users/${user.id}'),
                    onLongPress: () => showUserSheet(
                      context: context,
                      account: account,
                      userId: user.id,
                    ),
                  ),
                ),
              ),
            if (memberships.valueOrNull?.items case final memberships?)
              for (final membership in memberships)
                if (membership.user case final user?) ...[
                  const SizedBox(height: 8.0),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: UserPreview(
                        account: account,
                        user: user,
                        onTap: () => context.push('/$account/users/${user.id}'),
                        onLongPress: () => showUserSheet(
                          context: context,
                          account: account,
                          userId: user.id,
                        ),
                      ),
                    ),
                  ),
                ],
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: PaginationBottomWidget(
                  paginationState: memberships,
                  loadMore: () => ref
                      .read(
                        chatRoomMembersNotifierProvider(
                          account,
                          roomId,
                        ).notifier,
                      )
                      .loadMore(skipError: true),
                ),
              ),
            ),
            if (invitations != null) ...[
              const Divider(),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Text(t.misskey.chat_.sentInvitations),
                ),
              ),
              if (invitations.valueOrNull?.items case final invitations?)
                for (final invitation in invitations)
                  if (invitation.user case final user?) ...[
                    const SizedBox(height: 8.0),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: maxContentWidth,
                        child: UserPreview(
                          account: account,
                          user: user,
                          onTap: () =>
                              context.push('/$account/users/${user.id}'),
                          onLongPress: () => showUserSheet(
                            context: context,
                            account: account,
                            userId: user.id,
                          ),
                        ),
                      ),
                    ),
                  ],
              const SizedBox(height: 8.0),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: PaginationBottomWidget(
                    paginationState: invitations,
                    noItemsLabel: t.misskey.nothing,
                    loadMore: () => ref
                        .read(
                          chatRoomInvitationsNotifierProvider(
                            account,
                            roomId,
                          ).notifier,
                        )
                        .loadMore(skipError: true),
                  ),
                ),
              ),
            ],
            const SizedBox(height: 120.0),
          ],
        ),
      ),
    );
  }
}
