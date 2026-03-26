import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_notifier_provider.dart';
import '../../util/get_note_action.dart';
import 'cw_button.dart';
import 'deleted_note_widget.dart';
import 'mfm.dart';
import 'note_footer.dart';
import 'note_header.dart';
import 'reactions_viewer.dart';
import 'sub_note_content.dart';
import 'user_avatar.dart';

class NoteSimpleWidget extends HookConsumerWidget {
  const NoteSimpleWidget({
    super.key,
    required this.account,
    required this.noteId,
    this.borderRadius,
    this.showFooter,
    this.focusPostForm,
    this.note,
  });

  final Account account;
  final String noteId;
  final BorderRadius? borderRadius;
  final bool? showFooter;
  final void Function()? focusPostForm;
  final Note? note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteNotifierProvider(account, noteId));
    if (note == null) {
      return DeletedNoteWidget(
        account: account,
        noteId: noteId,
        borderRadius: borderRadius,
      );
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

    return InkWell(
      onTap: onTap != null ? () => onTap(ref) : null,
      onDoubleTap: onDoubleTap != null ? () => onDoubleTap(ref) : null,
      onLongPress: onLongPress != null ? () => onLongPress(ref) : null,
      borderRadius: borderRadius,
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.0,
          top: 6.0,
          right: 8.0,
          bottom: showFooter ?? showSubNoteFooter ? 0.0 : 8.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showAvatars)
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 4.0, end: 8.0),
                child: UserAvatar(
                  account: account,
                  user: note.user,
                  size:
                      DefaultTextStyle.of(context).style.lineHeight *
                      avatarScale *
                      0.9,
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
                    if (note.reactions.isNotEmpty) const SizedBox(height: 4.0),
                    ReactionsViewer(
                      account: account,
                      noteId: noteId,
                      showAllReactions: showAllReactions,
                      note: this.note,
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
      ),
    );
  }
}
