import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/attached_notes_notifier_provider.dart';
import 'note_widget.dart';
import 'paginated_list_view.dart';

class DriveFileNotes extends ConsumerWidget {
  const DriveFileNotes({
    super.key,
    required this.account,
    required this.fileId,
  });

  final Account account;
  final String fileId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(attachedNotesNotifierProvider(account, fileId));

    return PaginatedListView(
      paginationState: notes,
      itemBuilder:
          (context, note) => NoteWidget(account: account, noteId: note.id),
      onRefresh:
          () => ref.refresh(
            attachedNotesNotifierProvider(account, fileId).future,
          ),
      loadMore:
          (skipError) => ref
              .read(attachedNotesNotifierProvider(account, fileId).notifier)
              .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
