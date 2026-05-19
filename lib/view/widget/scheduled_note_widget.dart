import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/note_draft_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/endpoints_notifier_provider.dart';
import '../../provider/api/scheduled_notes_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../util/format_datetime.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import 'note_widget.dart';

class ScheduledNoteWidget extends ConsumerWidget {
  const ScheduledNoteWidget({
    super.key,
    required this.account,
    required this.draft,
  });

  final Account account;
  final NoteDraft draft;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final endpoints = ref.watch(endpointsNotifierProvider(account.host)).value;
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8.0),
            ),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.schedule),
              ),
              if (draft.scheduledAt case final scheduledAt?)
                Expanded(
                  child: Text(
                    t.misskey.scheduledToPostOnX(
                      x:
                          '${absoluteTime(scheduledAt)} '
                          '(${relativeTime(scheduledAt)})',
                    ),
                  ),
                )
              else
                const Spacer(),
              PopupMenuButton<void>(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () {
                      ref
                          .read(postNotifierProvider(account).notifier)
                          .fromDraft(draft, account);
                      ref
                          .read(attachesNotifierProvider(account).notifier)
                          .removeAll();
                      if (draft.files case final files?) {
                        ref
                            .read(attachesNotifierProvider(account).notifier)
                            .addAll(files.map(DrivePostFile.fromDriveFile));
                      }
                      context.pop();
                    },
                    child: ListTile(
                      leading: const Icon(Icons.edit),
                      title: Text(t.misskey.drafts_.restore),
                    ),
                  ),
                  if (endpoints?.contains('notes/drafts/update') ?? true)
                    PopupMenuItem(
                      onTap: () => futureWithDialog(
                        context,
                        ref
                            .read(
                              scheduledNotesNotifierProvider(account).notifier,
                            )
                            .cancel(draft.id),
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.cancel_schedule_send),
                        title: Text(t.misskey.drafts_.cancelSchedule),
                      ),
                    ),
                  PopupMenuItem(
                    onTap: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.misskey.drafts_.deleteAreYouSure,
                      );
                      if (!context.mounted) return;
                      if (confirmed) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(
                                scheduledNotesNotifierProvider(
                                  account,
                                ).notifier,
                              )
                              .delete(draft.id),
                        );
                      }
                    },
                    child: ListTile(
                      leading: const Icon(Icons.delete),
                      title: Text(t.misskey.delete),
                      iconColor: theme.colorScheme.error,
                      textColor: theme.colorScheme.error,
                    ),
                  ),
                ],
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        NoteWidget(
          account: account,
          noteId: '',
          withHardMute: false,
          showFooter: false,
          expandLongNote: true,
          note: draft.toNote(),
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(8.0),
          ),
        ),
      ],
    );
  }
}
