import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/scheduled_notes_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../util/format_datetime.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../widget/note_widget.dart';
import '../widget/paginated_list_view.dart';

class ScheduledNotesPage extends ConsumerWidget {
  const ScheduledNotesPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(scheduledNotesNotifierProvider(account));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.scheduled)),
      body: PaginatedListView(
        paginationState: notes,
        itemBuilder: (context, note) => Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 8.0,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(8.0),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.schedule),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      t.misskey.scheduledToPostOnX(
                        x: absoluteTime(note.createdAt),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  PopupMenuButton<void>(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: () async {
                          ref
                              .read(postNotifierProvider(account).notifier)
                              .fromNote(note);
                          ref
                              .read(attachesNotifierProvider(account).notifier)
                              .addAll(
                                note.files.map(
                                  (file) => DrivePostFile.fromDriveFile(file),
                                ),
                              );
                          if (note.createdAt.isAfter(DateTime.now())) {
                            ref
                                .read(postNotifierProvider(account).notifier)
                                .setScheduledAt(note.createdAt);
                          }
                          final deleted = await futureWithDialog(
                            context,
                            ref
                                .read(
                                  scheduledNotesNotifierProvider(
                                    account,
                                  ).notifier,
                                )
                                .cancel(note.id)
                                .then((_) => true),
                          );
                          if (!(deleted ?? false)) return;
                          if (!context.mounted) return;
                          await context.push('/$account/post');
                          ref.invalidate(
                            scheduledNotesNotifierProvider(account),
                          );
                        },
                        child: ListTile(
                          leading: const Icon(Icons.edit),
                          title: Text(t.misskey.deleteAndEdit),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () async {
                          final confirmed = await confirm(
                            context,
                            message: t.misskey.noteDeleteConfirm,
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
                                  .cancel(note.id),
                            );
                          }
                        },
                        child: ListTile(
                          leading: const Icon(Icons.delete),
                          title: Text(t.misskey.delete),
                          iconColor: Theme.of(context).colorScheme.error,
                          textColor: Theme.of(context).colorScheme.error,
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
              note: note.copyWith(id: ''),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(8.0),
              ),
            ),
          ],
        ),
        onRefresh: () =>
            ref.refresh(scheduledNotesNotifierProvider(account).future),
        loadMore: (skipError) => ref
            .read(scheduledNotesNotifierProvider(account).notifier)
            .loadMore(skipError: skipError),
        panel: false,
        noItemsLabel: t.misskey.noNotes,
      ),
    );
  }
}
