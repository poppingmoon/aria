import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_off_icons/material_off_icons.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../util/format_datetime.dart';
import '../../util/punycode.dart';
import 'bot_badge.dart';
import 'image_widget.dart';
import 'note_visibility_icon.dart';
import 'time_widget.dart';
import 'user_sheet.dart';
import 'username_widget.dart';

class NoteHeader extends HookConsumerWidget {
  const NoteHeader({
    super.key,
    required this.account,
    required this.note,
  });

  final Account account;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showCreatedAt = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showNoteCreatedAt),
    );
    final style = DefaultTextStyle.of(context).style;

    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: InkWell(
              onTap: note.userId.isNotEmpty
                  ? () => context.push('/$account/users/${note.userId}')
                  : null,
              onLongPress: () => showUserSheet(
                context: context,
                account: account,
                userId: note.userId,
              ),
              child: UsernameWidget(
                account: account,
                user: note.user,
                trailingSpans: [
                  if (note.user.isBot)
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: DefaultTextStyle.merge(
                          style: style.apply(
                            color: style.color?.withValues(alpha: 0.8),
                            fontSizeFactor: 0.8,
                          ),
                          child: const BotBadge(
                            textScaler: TextScaler.noScaling,
                          ),
                        ),
                      ),
                    ),
                  const WidgetSpan(child: SizedBox(width: 4.0)),
                  const TextSpan(text: Unicode.LRI),
                  TextSpan(text: '@${note.user.username}'),
                  if (note.user case User(:final host?))
                    TextSpan(
                      text: '@${toUnicode(host)}',
                      style: TextStyle(
                        color: style.color?.withValues(alpha: 0.5),
                      ),
                    ),
                  const TextSpan(text: Unicode.PDI),
                  const WidgetSpan(child: SizedBox(width: 2.0)),
                  for (final role in note.user.badgeRoles)
                    if (role case UserBadgeRole(:final iconUrl?))
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Tooltip(
                          message: role.name,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
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
                              opacity: style.color?.a ?? 1.0,
                            ),
                          ),
                        ),
                      ),
                ],
                style: const TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ),
        const SizedBox(width: 2.0),
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
              if (note.updatedAt case final updatedAt?)
                Tooltip(
                  message: '${t.misskey.edited}: '
                      '${absoluteTime(updatedAt)}'
                      '.${updatedAt.millisecond.toString().padLeft(3, '0')} '
                      '(${relativeTime(updatedAt)})',
                  child: const Icon(Icons.edit),
                ),
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
    );
  }
}
