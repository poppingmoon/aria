import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/note_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/streaming/note_update_event.dart';
import '../../model/tab_settings.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_is_deleted_notifier_provider.dart';
import '../../provider/note_notifier_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../provider/streaming/note_update_event_provider.dart';
import 'hard_muted_note_widget.dart';
import 'note_fallback_widget.dart';
import 'note_widget.dart';
import 'username_widget.dart';

class TimelineNote extends HookConsumerWidget {
  const TimelineNote({
    super.key,
    required this.tabSettings,
    required this.noteId,
    this.focusPostForm,
    this.margin = EdgeInsets.zero,
    this.borderRadius,
    this.hide = false,
  });

  final TabSettings tabSettings;
  final String noteId;
  final void Function()? focusPostForm;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry? borderRadius;
  final bool hide;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = tabSettings.account;
    final isDeleted = ref.watch(noteIsDeletedNotifierProvider(account, noteId));
    if (isDeleted) {
      return HardMutedNoteWidget(borderRadius: borderRadius);
    }
    final note = ref.watch(noteNotifierProvider(account, noteId));
    final appearNote = ref.watch(appearNoteProvider(account, noteId));
    if (note == null) {
      return Padding(
        padding: margin,
        child: Material(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: borderRadius,
          child: NoteFallbackWidget(account: account, noteId: noteId),
        ),
      );
    }
    if (appearNote == null) {
      return NoteWidget(
        account: account,
        noteId: noteId,
        focusPostForm: focusPostForm,
        margin: margin,
        borderRadius: borderRadius,
      );
    }
    if ((tabSettings.withFiles && appearNote.fileIds.isEmpty) || hide) {
      return HardMutedNoteWidget(borderRadius: borderRadius);
    }
    if (note.isRenote) {
      if (!tabSettings.withRenotes ||
          (!tabSettings.withSelfRenotes && note.userId == appearNote.userId)) {
        return HardMutedNoteWidget(borderRadius: borderRadius);
      }
    }
    if (!tabSettings.withSensitive) {
      final muted = useState(appearNote.containsSensitiveFile);
      if (muted.value) {
        final (verticalPadding, horizontalPadding) = ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) =>
                (settings.noteVerticalPadding, settings.noteHorizontalPadding),
          ),
        );
        final style = TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
        );
        return Padding(
          padding: margin,
          child: Material(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: borderRadius,
            child: InkWell(
              onTap: () => muted.value = false,
              child: UsernameWidget(
                account: account,
                user: appearNote.user,
                builder: (context, span) => Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: verticalPadding,
                    horizontal: horizontalPadding,
                  ),
                  child: Text.rich(
                    t.aria.userSaysSomethingSensitive(name: span),
                    style: style,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }
    if (!tabSettings.disableSubscribing) {
      ref.listen(noteUpdateEventProvider(account, appearNote.id), (_, next) {
        if (next case AsyncData(value: final event)) {
          switch (event) {
            case Reacted():
              ref
                  .read(notesNotifierProvider(account).notifier)
                  .addReaction(appearNote.id, event);
            case Unreacted():
              ref
                  .read(notesNotifierProvider(account).notifier)
                  .removeReaction(appearNote.id, event);
            case Deleted():
              ref
                  .read(notesNotifierProvider(account).notifier)
                  .remove(appearNote.id);
            case PollVoted():
              ref
                  .read(notesNotifierProvider(account).notifier)
                  .addVote(appearNote.id, event);
            case Updated():
              ref
                  .read(notesNotifierProvider(account).notifier)
                  .updateNote(appearNote.id, event);
          }
        }
      });
    }

    return NoteWidget(
      account: account,
      noteId: noteId,
      focusPostForm: focusPostForm,
      margin: margin,
      borderRadius: borderRadius,
    );
  }
}
