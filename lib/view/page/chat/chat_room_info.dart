import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../extension/text_style_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/chat_room_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/error_message.dart';
import '../../widget/haptic_feedback_refresh_indicator.dart';
import '../../widget/key_value_widget.dart';

class ChatRoomInfo extends ConsumerWidget {
  const ChatRoomInfo({super.key, required this.account, required this.roomId});

  final Account account;
  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final room = ref.watch(chatRoomNotifierProvider(account, roomId));
    final isMyRoom = room.value?.owner.username == account.username;
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(context).style;

    return HapticFeedbackRefreshIndicator(
      onRefresh: () =>
          ref.refresh(chatRoomNotifierProvider(account, roomId).future),
      child: switch (room) {
        AsyncValue(value: final room?) => IconTheme.merge(
          data: IconThemeData(
            color: theme.colorScheme.primary,
            size: style.lineHeight,
          ),
          child: ListView(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: KeyValueWidget(
                    label: t.misskey.name,
                    child: InkWell(
                      onTap: isMyRoom
                          ? () async {
                              final result = await showTextFieldDialog(
                                context,
                                title: Text(t.misskey.name),
                                initialText: room.name,
                              );
                              if (!context.mounted) return;
                              if (result != null) {
                                await futureWithDialog(
                                  context,
                                  ref
                                      .read(
                                        chatRoomNotifierProvider(
                                          account,
                                          roomId,
                                        ).notifier,
                                      )
                                      .updateRoom(name: result),
                                );
                              }
                            }
                          : null,
                      onLongPress: () => copyToClipboard(context, room.name),
                      child: Text.rich(
                        TextSpan(
                          text: room.name,
                          children: isMyRoom
                              ? [
                                  const WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                      ),
                                      child: Icon(Icons.edit),
                                    ),
                                  ),
                                ]
                              : null,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: KeyValueWidget(
                    label: t.misskey.description,
                    child: InkWell(
                      onTap: isMyRoom
                          ? () async {
                              final result = await showTextFieldDialog(
                                context,
                                title: Text(t.misskey.description),
                                initialText: room.description,
                                maxLines: null,
                              );
                              if (!context.mounted) return;
                              if (result != null) {
                                await futureWithDialog(
                                  context,
                                  ref
                                      .read(
                                        chatRoomNotifierProvider(
                                          account,
                                          roomId,
                                        ).notifier,
                                      )
                                      .updateRoom(description: result),
                                );
                              }
                            }
                          : null,
                      onLongPress: room.description.isNotEmpty
                          ? () => copyToClipboard(context, room.description)
                          : null,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            if (room.description.isNotEmpty)
                              TextSpan(text: room.description)
                            else
                              TextSpan(
                                text: '(${t.misskey.noDescription})',
                                style: style.apply(
                                  color: theme.colorScheme.onSurface.withValues(
                                    alpha: 0.5,
                                  ),
                                ),
                              ),
                            if (isMyRoom)
                              const WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                  ),
                                  child: Icon(Icons.edit),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              if (isMyRoom)
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    child: ListTile(
                      leading: const Icon(Icons.delete),
                      title: Text(t.misskey.chat_.deleteRoom),
                      onTap: () async {
                        final confirmed = await confirm(
                          context,
                          message: t.misskey.deleteAreYouSure(x: room.name),
                        );
                        if (!context.mounted) return;
                        if (confirmed) {
                          final result = await futureWithDialog(
                            context,
                            ref
                                .read(
                                  chatRoomNotifierProvider(
                                    account,
                                    roomId,
                                  ).notifier,
                                )
                                .delete()
                                .then((_) => ()),
                          );
                          if (!context.mounted) return;
                          if (result != null) {
                            context.pop();
                          }
                        }
                      },
                      iconColor: theme.colorScheme.error,
                      textColor: theme.colorScheme.error,
                    ),
                  ),
                )
              else ...[
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    child: SwitchListTile(
                      secondary: const Icon(Icons.visibility_off),
                      title: Text(t.misskey.chat_.muteThisRoom),
                      value: room.isMuted ?? false,
                      onChanged: (value) => futureWithDialog(
                        context,
                        ref
                            .read(
                              chatRoomNotifierProvider(
                                account,
                                roomId,
                              ).notifier,
                            )
                            .mute(value),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    child: ListTile(
                      leading: const Icon(Icons.close),
                      title: Text(t.misskey.chat_.leave),
                      onTap: () async {
                        final confirmed = await confirm(
                          context,
                          message: t.misskey.areYouSure,
                        );
                        if (!context.mounted) return;
                        if (confirmed) {
                          final result = await futureWithDialog(
                            context,
                            ref
                                .read(
                                  chatRoomNotifierProvider(
                                    account,
                                    roomId,
                                  ).notifier,
                                )
                                .leave()
                                .then((_) => ()),
                          );
                          if (!context.mounted) return;
                          if (result != null) {
                            context.pop();
                          }
                        }
                      },
                      iconColor: theme.colorScheme.error,
                      textColor: theme.colorScheme.error,
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 120.0),
            ],
          ),
        ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
