import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_off_icons/material_off_icons.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import 'note_visibility_icon.dart';
import 'time_widget.dart';
import 'user_avatar.dart';
import 'user_sheet.dart';
import 'username_widget.dart';

class RenoteHeader extends HookConsumerWidget {
  const RenoteHeader({
    super.key,
    required this.account,
    required this.noteId,
    this.onTap,
    this.onLongPress,
  });

  final Account account;
  final String noteId;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final (showAvatars, showCreatedAt) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (settings.showAvatarsInNote, settings.showNoteCreatedAt),
      ),
    );
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final style = DefaultTextStyle.of(
      context,
    ).style.apply(color: colors.renote);

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: DefaultTextStyle.merge(
        style: style,
        child: IconTheme.merge(
          data: IconThemeData(color: colors.renote),
          child: Row(
            children: [
              if (showAvatars) ...[
                UserAvatar(
                  account: account,
                  user: note.user,
                  onTap: () => context.push('/$account/users/${note.userId}'),
                ),
                const SizedBox(width: 2.0),
              ],
              Icon(Icons.repeat_rounded, color: colors.renote),
              const SizedBox(width: 2.0),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: InkWell(
                    onTap: () => context.push('/$account/users/${note.userId}'),
                    onLongPress: () => showUserSheet(
                      context: context,
                      account: account,
                      userId: note.userId,
                    ),
                    child: UsernameWidget(
                      account: account,
                      user: note.user,
                      builder: (context, span) => Text.rich(
                        (note.userId == note.renote?.userId
                            ? t.aria.selfRenotedBy
                            : t.aria.renotedBy)(user: span),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      style: TextStyle(
                        color: colors.renote,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              DefaultTextStyle.merge(
                style: style.apply(fontSizeFactor: 0.9),
                child: TimeWidget(
                  time: note.createdAt,
                  absolute: showCreatedAt,
                ),
              ),
              IconTheme.merge(
                data: IconThemeData(size: style.lineHeight * 0.9),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (note.visibility != NoteVisibility.public)
                      NoteVisibilityIcon(visibility: note.visibility),
                    if (note.localOnly)
                      Tooltip(
                        message: t.misskey.visibility_.disableFederation,
                        child: const Icon(OffIcons.rocket),
                      ),
                    if (note.channel != null)
                      Tooltip(
                        message: t.misskey.channel,
                        child: const Icon(Icons.tv),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
