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
import '../../util/punycode.dart';
import 'bot_badge.dart';
import 'image_widget.dart';
import 'note_visibility_icon.dart';
import 'time_widget.dart';
import 'username_widget.dart';

class NoteHeader extends HookConsumerWidget {
  const NoteHeader({
    super.key,
    required this.account,
    required this.note,
    this.showDate = true,
  });

  final Account account;
  final Note note;
  final bool showDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showCreatedAt = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showNoteCreatedAt),
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style = DefaultTextStyle.of(context).style;

    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: note.userId.isNotEmpty
                  ? () => context.push('/$account/users/${note.userId}')
                  : null,
              child: Text.rich(
                TextSpan(
                  children: [
                    ...useMemoized(
                      () => buildUsername(
                        ref,
                        account: account,
                        user: note.user,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      [note.user, colors],
                    ),
                    if (note.user.isBot)
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: DefaultTextStyle.merge(
                            style: style.apply(
                              color: style.color?.withOpacity(0.8),
                              fontSizeFactor: 0.8,
                            ),
                            child: const BotBadge(),
                          ),
                        ),
                      ),
                    const WidgetSpan(child: SizedBox(width: 4.0)),
                    TextSpan(text: '@${note.user.username}'),
                    if (note.user case User(:final host?))
                      TextSpan(
                        text: '@${toUnicode(host)}',
                        style: TextStyle(
                          color: style.color?.withOpacity(0.5),
                        ),
                      ),
                    for (final role in note.user.badgeRoles)
                      if (role case UserBadgeRole(:final iconUrl?))
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Tooltip(
                            message: role.name,
                            child: ImageWidget(
                              url: iconUrl.isAbsolute
                                  ? iconUrl.toString()
                                  : iconUrl
                                      .replace(
                                        scheme: 'https',
                                        host: note.user.host ?? account.host,
                                      )
                                      .toString(),
                              height: style.lineHeight,
                            ),
                          ),
                        ),
                  ],
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ),
        if (showDate)
          DefaultTextStyle.merge(
            style: style.apply(fontSizeFactor: 0.9),
            child: TimeWidget(
              time: note.createdAt,
              onTap: note.id.isNotEmpty
                  ? () => context.push('/$account/notes/${note.id}')
                  : null,
              absolute: showCreatedAt,
            ),
          ),
        IconTheme.merge(
          data: IconThemeData(size: style.lineHeight * 0.9),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
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
    );
  }
}
