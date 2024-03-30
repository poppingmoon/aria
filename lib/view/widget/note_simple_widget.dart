import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/text_style_extension.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_provider.dart';
import 'cw_button.dart';
import 'emoji_sheet.dart';
import 'mfm.dart';
import 'note_header.dart';
import 'note_sheet.dart';
import 'sub_note_content.dart';
import 'user_avatar.dart';

class NoteSimpleWidget extends HookConsumerWidget {
  const NoteSimpleWidget({
    super.key,
    required this.account,
    required this.noteId,
    this.borderRadius,
    this.showFooter,
    this.postFormFocusNode,
  });

  final Account account;
  final String noteId;
  final BorderRadius? borderRadius;
  final bool? showFooter;
  final FocusNode? postFormFocusNode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final expandOnTap = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.expandNoteOnTap),
    );
    final expandOnDoubleTap = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.expandNoteOnDoubleTap),
    );
    final showAvatars = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showAvatarsInNote),
    );
    final showContent = useState(false);

    return InkWell(
      onTap: expandOnTap ? () => context.push('/$account/notes/$noteId') : null,
      onDoubleTap: expandOnDoubleTap
          ? () => context.push('/$account/notes/$noteId')
          : null,
      onLongPress: () => showModalBottomSheet<void>(
        context: context,
        builder: (context) => NoteSheet(
          account: account,
          noteId: noteId,
          postFormFocusNode: postFormFocusNode,
        ),
        clipBehavior: Clip.hardEdge,
        isScrollControlled: true,
      ),
      borderRadius: borderRadius,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showAvatars)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: UserAvatar(
                  user: note.user,
                  size: DefaultTextStyle.of(context).style.lineHeight * 2.5,
                ),
              ),
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
                      showFooter: showFooter,
                      postFormFocusNode: postFormFocusNode,
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
