import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../model/account.dart';
import '../model/general_settings.dart';
import '../provider/general_settings_notifier_provider.dart';
import '../provider/notes_notifier_provider.dart';
import '../view/dialog/reaction_confirmation_dialog.dart';
import '../view/widget/emoji_picker.dart';
import '../view/widget/note_sheet.dart';
import 'future_with_dialog.dart';

void Function()? getNoteAction(
  WidgetRef ref, {
  required Account account,
  required NoteActionType type,
  required Note note,
  required Note appearNote,
  String? clipId,
  bool disableHeader = false,
}) {
  if (note.id.isEmpty) {
    return null;
  }
  return switch (type) {
    NoteActionType.none => null,
    NoteActionType.expand =>
      () => ref.context.push('/$account/notes/${appearNote.id}'),
    NoteActionType.menu =>
      () => showNoteSheet(
        context: ref.context,
        account: account,
        noteId: note.id,
        clipId: clipId,
        disableHeader: disableHeader,
      ),
    NoteActionType.reaction =>
      !account.isGuest
          ? () async {
            final emoji =
                appearNote.reactionAcceptance == ReactionAcceptance.likeOnly
                    ? '❤'
                    : await pickEmoji(
                      ref,
                      account,
                      saveHistory: false,
                      confirmBeforePop: true,
                    );
            if (!ref.context.mounted) return;
            if (emoji != null) {
              if (appearNote.reactionAcceptance ==
                      ReactionAcceptance.likeOnly ||
                  ref
                      .read(generalSettingsNotifierProvider)
                      .confirmBeforeReact) {
                final confirmed = await confirmReaction(
                  ref.context,
                  account: account,
                  emoji: emoji,
                  note: appearNote,
                );
                if (!confirmed) return;
              }
              if (!ref.context.mounted) return;
              await futureWithDialog(
                ref.context,
                ref
                    .read(notesNotifierProvider(account).notifier)
                    .react(appearNote.id, emoji),
                overlay: false,
              );
            }
          }
          : null,
  };
}
