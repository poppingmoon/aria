import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
import 'username_widget.dart';

class RenoteHeader extends HookConsumerWidget {
  const RenoteHeader({
    super.key,
    required this.account,
    required this.noteId,
    this.onTap,
  });

  final Account account;
  final String noteId;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final showAvatars = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showAvatarsInNote),
    );
    final showCreatedAt = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showNoteCreatedAt),
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style =
        DefaultTextStyle.of(context).style.apply(color: colors.renote);

    return InkWell(
      onTap: onTap,
      child: DefaultTextStyle.merge(
        style: style,
        child: IconTheme.merge(
          data: IconThemeData(color: colors.renote),
          child: Row(
            children: [
              if (showAvatars)
                UserAvatar(
                  account: account,
                  user: note.user,
                  onTap: () => context.push('/$account/users/${note.userId}'),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Icon(Icons.repeat_rounded, color: colors.renote),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () => context.push('/$account/users/${note.userId}'),
                    child: Text.rich(
                      (note.userId == note.renote?.userId
                          ? t.aria.selfRenotedBy
                          : t.aria.renotedBy)(
                        user: TextSpan(
                          children: useMemoized(
                            () => buildUsername(
                              ref,
                              account: account,
                              user: note.user,
                              style: TextStyle(
                                color: colors.renote,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            [note.user, colors],
                          ),
                        ),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
                        child: const Icon(Icons.rocket_outlined),
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
