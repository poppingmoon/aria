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
import 'emoji_sheet.dart';
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
    this.postFormFocusNode,
  });

  final Account account;
  final String noteId;
  final int depth;
  final bool showReplies;
  final FocusNode? postFormFocusNode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final tapAction = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.noteTapAction),
    );
    final doubleTapAction = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.noteDoubleTapAction),
    );
    final longPressAction = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.noteLongPressAction),
    );
    final showAvatars = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showAvatarsInNote),
    );
    final children = showReplies && depth < 5
        ? ref.watch(childrenNotesNotifierProvider(account, noteId))
        : null;
    final showContent = useState(false);

    return InkWell(
      onTap: getNoteAction(
        ref,
        account: account,
        type: tapAction,
        note: note,
        appearNote: note,
      ),
      onDoubleTap: getNoteAction(
        ref,
        account: account,
        type: doubleTapAction,
        note: note,
        appearNote: note,
      ),
      onLongPress: getNoteAction(
        ref,
        account: account,
        type: longPressAction,
        note: note,
        appearNote: note,
      ),
      child: Column(
        children: [
          ChannelColorBarBox(
            note: note,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showAvatars)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserAvatar(
                      user: note.user,
                      size: DefaultTextStyle.of(context).style.lineHeight * 2.5,
                      onTap: () =>
                          context.push('/$account/users/${note.userId}'),
                    ),
                  )
                else
                  const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NoteHeader(account: account, note: note),
                      if (note.cw != null) ...[
                        Mfm(
                          account: account,
                          text: note.cw,
                          emojis: note.emojis,
                          author: note.user,
                          onTapEmoji: (emoji) => showModalBottomSheet<void>(
                            context: context,
                            builder: (context) => EmojiSheet(
                              account: account,
                              emoji: emoji,
                              targetNote: note,
                            ),
                          ),
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
                          postFormFocusNode: postFormFocusNode,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (children != null)
            Container(
              margin: const EdgeInsets.only(top: 8.0, left: 8.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                    width: 2.0,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: (children.valueOrNull?.items ?? [])
                    .map(
                      (reply) => NoteSubWidget(
                        account: account,
                        noteId: reply.id,
                        showReplies: true,
                        depth: depth + 1,
                      ),
                    )
                    .toList(),
              ),
            ),
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
