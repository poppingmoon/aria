import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/children_notes_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_notifier_provider.dart';
import '../../util/get_note_action.dart';
import 'channel_color_bar_box.dart';
import 'cw_button.dart';
import 'deleted_note_widget.dart';
import 'mfm.dart';
import 'note_footer.dart';
import 'note_header.dart';
import 'reactions_viewer.dart';
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
    this.barBottomPadding,
  });

  final Account account;
  final String noteId;
  final int depth;
  final bool showReplies;
  final void Function()? focusPostForm;
  final double? barBottomPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteNotifierProvider(account, noteId));
    if (note == null) {
      return DeletedNoteWidget(account: account, noteId: noteId);
    }
    final (
      showAvatars,
      showReactionsViewer,
      showSubNoteFooter,
      alwaysExpandCw,
      showAllReactions,
      avatarScale,
      tapAction,
      doubleTapAction,
      longPressAction,
    ) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.showAvatarsInSubNote,
          settings.showSubNoteReactionsViewer,
          settings.showSubNoteFooter,
          settings.alwaysExpandCw,
          settings.alwaysShowAllReactions,
          settings.avatarScale,
          settings.noteTapAction,
          settings.noteDoubleTapAction,
          settings.noteLongPressAction,
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
    final theme = Theme.of(context);
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
                      if (cw.isNotEmpty) ...[
                        Mfm(
                          account: account,
                          text: cw,
                          emojis: note.emojis,
                          author: note.user,
                          noteId: note.id,
                          nyaize: true,
                        ),
                        const SizedBox(height: 2.0),
                      ],
                      CwButton(
                        note: note,
                        onPressed: (value) => showContent.value = value,
                        isOpen: showContent.value,
                      ),
                      if (showContent.value &&
                          (note.text != null ||
                              note.replyId != null ||
                              note.renoteId != null))
                        const SizedBox(height: 2.0),
                    ],
                    if (note.cw == null || showContent.value)
                      SubNoteContent(
                        account: account,
                        noteId: noteId,
                        focusPostForm: focusPostForm,
                      ),
                    if (showReactionsViewer &&
                        note.reactionAcceptance !=
                            ReactionAcceptance.likeOnly) ...[
                      if (note.reactions.isNotEmpty)
                        const SizedBox(height: 4.0),
                      ReactionsViewer(
                        account: account,
                        noteId: noteId,
                        showAllReactions: showAllReactions,
                      ),
                    ],
                    if (showSubNoteFooter)
                      NoteFooter(
                        account: account,
                        note: note,
                        appearNote: note,
                        focusPostForm: focusPostForm,
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (children?.value?.items case final children?
              when children.isNotEmpty) ...[
            if (!showSubNoteFooter) const SizedBox(height: 8.0),
            for (final (index, reply) in children.indexed) ...[
              ChannelColorBarBox(
                note: reply,
                barBottomPadding: showSubNoteFooter
                    ? index == children.length - 1
                          ? barBottomPadding ?? 8.0
                          : 8.0
                    : 0.0,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8.0),
                  child: ColorBarBox(
                    color: theme.colorScheme.outlineVariant,
                    width: 2.0,
                    barBottomPadding:
                        showSubNoteFooter && index == children.length - 1
                        ? barBottomPadding ?? 8.0
                        : 0.0,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 6.0),
                      child: NoteSubWidget(
                        account: account,
                        noteId: reply.id,
                        showReplies: true,
                        depth: depth + 1,
                        barBottomPadding: index == children.length - 1
                            ? barBottomPadding
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
              if (index < children.length - 1)
                Container(
                  margin: const EdgeInsetsDirectional.only(start: 8.0),
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      start: BorderSide(
                        color: theme.colorScheme.outlineVariant,
                        width: 2.0,
                      ),
                    ),
                  ),
                  height: showSubNoteFooter ? 4.0 : 12.0,
                ),
            ],
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
