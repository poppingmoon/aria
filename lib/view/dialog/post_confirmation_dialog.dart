import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/max_content_width.dart';
import '../../extension/community_channel_extension.dart';
import '../../extension/note_draft_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/channel_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_notifier_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/format_datetime.dart';
import '../../util/future_with_dialog.dart';
import '../widget/note_widget.dart';

Future<bool> confirmPost(
  WidgetRef ref,
  Account account,
  NoteDraft draft, {
  List<DriveFile>? files,
}) async {
  if (draft.replyId case final replyId?) {
    final reply = ref.read(noteNotifierProvider(account, replyId));
    if (reply == null) {
      final reply = await futureWithDialog(
        ref.context,
        ref.read(notesNotifierProvider(account).notifier).show(replyId),
      );
      if (reply == null) {
        return false;
      }
    }
  }
  if (draft.renoteId case final renoteId?) {
    final renote = ref.read(noteNotifierProvider(account, renoteId));
    if (renote == null) {
      if (!ref.context.mounted) return false;
      final renote = await futureWithDialog(
        ref.context,
        ref.read(notesNotifierProvider(account).notifier).show(renoteId),
      );
      if (renote == null) {
        return false;
      }
    }
  }
  if (!ref.context.mounted) {
    return false;
  }
  final result = await showDialog<bool>(
    context: ref.context,
    builder: (context) => PostConfirmationDialog(
      account: account,
      draft: draft,
      files: files ?? [],
    ),
  );
  return result ?? false;
}

class PostConfirmationDialog extends ConsumerWidget {
  const PostConfirmationDialog({
    super.key,
    required this.account,
    required this.draft,
    required this.files,
  });

  final Account account;
  final NoteDraft draft;
  final List<DriveFile> files;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final channel =
        draft.channel ??
        switch (draft.channelId) {
          final channelId? => ref.watch(
            channelNotifierProvider(
              account,
              channelId,
            ).select((channel) => channel.value?.toNoteChannelInfo()),
          ),
          _ => null,
        };
    final canScheduleNote =
        i?.policies?.canScheduleNote ??
        ((i?.policies?.scheduleNoteMax ?? 0) > 0);
    final note = draft
        .copyWith(
          channel: channel,
          scheduledAt: canScheduleNote ? draft.scheduledAt : null,
        )
        .toNote();
    final theme = Theme.of(context);
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return Dialog(
      child: Container(
        width: maxContentWidth,
        margin: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    draft.isRenote && files.isEmpty
                        ? t.aria.renoteConfirm
                        : t.aria.postConfirm,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              if (draft.scheduledAt case final date? when canScheduleNote)
                Card.filled(
                  color: colors.infoBg,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(Icons.schedule),
                            ),
                            const WidgetSpan(child: SizedBox(width: 8.0)),
                            TextSpan(
                              text: t.misskey.scheduleToPostOnX(
                                x: absoluteTime(date),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              if (draft.isRenote && files.isEmpty)
                NoteWidget(
                  account: account,
                  noteId: draft.renoteId!,
                  showFooter: false,
                  backgroundColor: Colors.transparent,
                )
              else
                NoteWidget(
                  account: account,
                  noteId: '',
                  note: note.copyWith(files: files),
                  showFooter: false,
                  backgroundColor: Colors.transparent,
                ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8.0,
                    children: [
                      ElevatedButton(
                        autofocus: true,
                        onPressed: () => context.pop(true),
                        child: Text(t.misskey.ok),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: theme.colorScheme.primary,
                          backgroundColor:
                              theme.colorScheme.surfaceContainerLowest,
                        ),
                        onPressed: () => context.pop(false),
                        child: Text(t.misskey.cancel),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
