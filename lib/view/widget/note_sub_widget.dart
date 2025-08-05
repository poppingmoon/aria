import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/children_notes_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_provider.dart';
import '../../util/get_note_action.dart';
import 'channel_color_bar_box.dart';
import 'cw_button.dart';
import 'deleted_note_widget.dart';
import 'mfm.dart';
import 'note_header.dart';
import 'sub_note_content.dart';
import 'user_avatar.dart';

class NoteSubWidget extends HookConsumerWidget {
  const NoteSubWidget({
    super.key,
    required this.account,
    required this.noteId,
    this.depth = 0,
    this.showReplies = false,
    this.focusPostForm,
  });

  final Account account;
  final String noteId;
  final int depth;
  final bool showReplies;
  final void Function()? focusPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return DeletedNoteWidget(account: account, noteId: noteId);
    }
    final (
      tapAction,
      doubleTapAction,
      longPressAction,
      showAvatars,
      avatarScale,
      alwaysExpandCw,
    ) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.noteTapAction,
          settings.noteDoubleTapAction,
          settings.noteLongPressAction,
          settings.showAvatarsInSubNote,
          settings.avatarScale,
          settings.alwaysExpandCw,
        ),
      ),
    );
    final children = showReplies && depth < 5
        ? ref.watch(childrenNotesNotifierProvider(account, noteId))
        : null;
    final showContent = useState(alwaysExpandCw);
    final onTap = useMemoized(
      () => getNoteAction(
        account: account,
        type: tapAction,
        note: note,
        appearNote: note,
      ),
      [account, tapAction, noteId],
    );
    final onDoubleTap = useMemoized(
      () => getNoteAction(
        account: account,
        type: doubleTapAction,
        note: note,
        appearNote: note,
      ),
      [account, doubleTapAction, noteId],
    );
    final onLongPress = useMemoized(
      () => getNoteAction(
        account: account,
        type: longPressAction,
        note: note,
        appearNote: note,
      ),
      [account, longPressAction, noteId],
    );
    final style = DefaultTextStyle.of(context).style;

    return InkWell(
      onTap: onTap != null ? () => onTap(ref) : null,
      onDoubleTap: onDoubleTap != null ? () => onDoubleTap(ref) : null,
      onLongPress: onLongPress != null ? () => onLongPress(ref) : null,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showAvatars)
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 4.0, end: 8.0),
                  child: Opacity(
                    opacity: style.color?.a ?? 1.0,
                    child: UserAvatar(
                      account: account,
                      user: note.user,
                      size: style.lineHeight * avatarScale * 0.9,
                      onTap: () =>
                          context.push('/$account/users/${note.userId}'),
                    ),
                  ),
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NoteHeader(account: account, note: note),
                    if (note.cw case final cw?) ...[
                      if (cw.isNotEmpty)
                        Mfm(
                          account: account,
                          text: cw,
                          emojis: note.emojis,
                          author: note.user,
                          noteId: note.id,
                          nyaize: true,
                        ),
                      CwButton(
                        note: note,
                        onPressed: (value) => showContent.value = value,
                        isOpen: showContent.value,
                      ),
                    ],
                    if (note.cw == null || showContent.value)
                      SubNoteContent(
                        account: account,
                        noteId: noteId,
                        focusPostForm: focusPostForm,
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (children?.valueOrNull?.items case final children?
              when children.isNotEmpty) ...[
            const SizedBox(height: 8.0),
            for (final (index, reply) in children.indexed)
              ChannelColorBarBox(
                note: reply,
                child: Container(
                  margin: const EdgeInsetsDirectional.only(start: 8.0),
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      start: BorderSide(
                        color: Theme.of(context).colorScheme.outlineVariant,
                        width: 2.0,
                      ),
                    ),
                  ),
                  padding: EdgeInsetsDirectional.only(
                    start: 4.0,
                    top: index == 0 ? 0.0 : 4.0,
                    bottom: index == children.length - 1 ? 0.0 : 4.0,
                  ),
                  child: NoteSubWidget(
                    account: account,
                    noteId: reply.id,
                    showReplies: true,
                    depth: depth + 1,
                  ),
                ),
              ),
          ],
          if (depth >= 5 && (note.repliesCount > 0 || note.renoteCount > 0))
            TextButton(
              onPressed: () => context.push('/$account/notes/$noteId'),
              child: Text(t.misskey.continueThread),
            ),
        ],
      ),
    );
  }
}
