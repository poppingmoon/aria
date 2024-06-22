import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_is_long_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import '../../util/navigate.dart';
import 'emoji_sheet.dart';
import 'media_list.dart';
import 'mfm.dart';
import 'note_footer.dart';
import 'poll_widget.dart';
import 'reactions_viewer.dart';

class SubNoteContent extends HookConsumerWidget {
  const SubNoteContent({
    super.key,
    required this.account,
    required this.noteId,
    this.showFooter,
    this.focusPostForm,
    this.note,
  });

  final Account account;
  final String noteId;
  final bool? showFooter;
  final void Function()? focusPostForm;
  final Note? note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final showReactionsViewer = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showSubNoteReactionsViewer),
    );
    final bool showFooter = this.showFooter ??
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.showSubNoteFooter),
        );
    final parsed =
        note.text != null ? ref.watch(parsedMfmProvider(note.text!)) : null;
    final isLong =
        note.cw == null && ref.watch(noteIsLongProvider(account, noteId));
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final isCollapsed = useState(isLong);
    final isFilesCollapsed = useState(true);
    final isPollCollapsed = useState(true);
    final style = DefaultTextStyle.of(context).style;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (parsed != null || note.replyId != null || note.renoteId != null)
          Text.rich(
            TextSpan(
              children: [
                if (note.replyId != null)
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8.0),
                      onTap: () =>
                          context.push('/$account/notes/${note.replyId}'),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.reply,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                if (parsed != null)
                  ...useMemoized(
                    () => buildMfm(
                      ref,
                      account: account,
                      nodes: parsed,
                      emojis: note.emojis,
                      author: note.user,
                      nyaize: true,
                      onTapEmoji: (emoji) => showModalBottomSheet<void>(
                        context: context,
                        builder: (context) => EmojiSheet(
                          account: account,
                          emoji: emoji,
                          targetNote: note,
                        ),
                      ),
                      onLinkTap: (link) => navigate(ref, account, link),
                      maxLines: isCollapsed.value ? 10 : null,
                    ),
                    [account, parsed, colors, note.user, note.emojis],
                  ),
                if (note.renoteId != null)
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: InkWell(
                      onTap: () {
                        context.push('/$account/notes/${note.renoteId}');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          'RN: ...',
                          style: TextStyle(
                            color: colors.renote,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            maxLines: isCollapsed.value ? 10 : null,
          ),
        if (!isCollapsed.value) ...[
          if (note.files.isNotEmpty) ...[
            TextButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  right: 8.0,
                  bottom: 4.0,
                ),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () => isFilesCollapsed.value = !isFilesCollapsed.value,
              icon: Icon(
                isFilesCollapsed.value
                    ? Icons.arrow_right
                    : Icons.arrow_drop_down,
              ),
              label: Text(t.misskey.withNFiles(n: note.files.length)),
            ),
            if (!isFilesCollapsed.value)
              MediaList(
                account: account,
                files: note.files,
                user: note.user,
              ),
          ],
          if (note case Note(:final poll?)) ...[
            TextButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  right: 8.0,
                  bottom: 4.0,
                ),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () => isPollCollapsed.value = !isPollCollapsed.value,
              icon: Icon(
                isPollCollapsed.value
                    ? Icons.arrow_right
                    : Icons.arrow_drop_down,
              ),
              label: Text(t.misskey.poll),
            ),
            if (!isPollCollapsed.value)
              PollWidget(account: account, noteId: noteId, poll: poll),
          ],
        ],
        if (isLong)
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              textStyle: style,
              minimumSize: Size(double.infinity, style.fontSize! * 2.5),
            ),
            onPressed: () => isCollapsed.value = !isCollapsed.value,
            child: Text(
              isCollapsed.value ? t.misskey.showMore : t.misskey.showLess,
            ),
          ),
        if (showReactionsViewer &&
            note.reactionAcceptance != ReactionAcceptance.likeOnly)
          ReactionsViewer(
            account: account,
            noteId: noteId,
            note: this.note,
          ),
        if (showFooter)
          NoteFooter(
            account: account,
            noteId: noteId,
            focusPostForm: focusPostForm,
            note: this.note,
          ),
      ],
    );
  }
}
