import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/note_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/streaming/note_update_event.dart';
import '../../model/tab_settings.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_is_deleted_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../provider/streaming/note_subscription_notifier_provider.dart';
import '../../provider/streaming/note_update_event_provider.dart';
import 'note_fallback_widget.dart';
import 'note_widget.dart';
import 'username_widget.dart';

class TimelineNote extends HookConsumerWidget {
  const TimelineNote({
    super.key,
    required this.tabSettings,
    required this.noteId,
    this.focusPostForm,
  });

  final TabSettings tabSettings;
  final String noteId;
  final void Function()? focusPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = tabSettings.account;
    final isDeleted = ref.watch(noteIsDeletedProvider(account, noteId));
    if (isDeleted) {
      return const SizedBox.shrink();
    }
    final note = ref.watch(noteProvider(account, noteId));
    final appearNote = ref.watch(appearNoteProvider(account, noteId));
    final notifier =
        ref.watch(noteSubscriptionNotifierProvider(account).notifier);
    if (note == null || appearNote == null) {
      return NoteFallbackWidget(
        account: account,
        noteId: noteId,
      );
    }
    if (tabSettings.withFiles && appearNote.fileIds.isEmpty) {
      return const SizedBox.shrink();
    }
    if (note.isRenote) {
      if (!tabSettings.withRenotes ||
          (!tabSettings.withSelfRenotes && note.userId == appearNote.userId)) {
        return const SizedBox.shrink();
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
        return Material(
          color: Theme.of(context).colorScheme.surface,
          child: InkWell(
            onTap: () => muted.value = false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: verticalPadding,
                horizontal: horizontalPadding,
              ),
              child: Text.rich(
                t.aria.userSaysSomethingSensitive(
                  name: TextSpan(
                    children: buildUsername(
                      ref,
                      account: account,
                      user: appearNote.user,
                      style: TextStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.7),
                      ),
                    ),
                  ),
                ),
                style: TextStyle(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      }
    }
    if (!tabSettings.disableSubscribing) {
      useEffect(() {
        Future(() => notifier.subscribe(appearNote.id));
        return () => Future(() => notifier.unsubscribe(appearNote.id));
      });
      ref.listen(
        noteUpdateEventProvider(account, appearNote.id),
        (_, next) {
          next.whenData((event) {
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
          });
        },
      );
    }

    return NoteWidget(
      account: account,
      noteId: noteId,
      focusPostForm: focusPostForm,
    );
  }
}
