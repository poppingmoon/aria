import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/notes_after_renotes_notifier_provider.dart';
import '../widget/note_widget.dart';
import '../widget/paginated_list_view.dart';

class NotesAfterRenotesPage extends ConsumerWidget {
  const NotesAfterRenotesPage({
    super.key,
    required this.account,
    required this.noteId,
  });

  final Account account;
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(notesAfterRenotesNotifierProvider(account, noteId));

    return Scaffold(
      appBar: AppBar(title: Text(t.aria.notesAfterRenotes)),
      body: PaginatedListView(
        paginationState: notes,
        itemBuilder:
            (context, note) => NoteWidget(account: account, noteId: note.id),
        onRefresh:
            () => ref.refresh(
              notesAfterRenotesNotifierProvider(account, noteId).future,
            ),
        loadMore:
            (skipError) => ref
                .read(
                  notesAfterRenotesNotifierProvider(account, noteId).notifier,
                )
                .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noNotes,
      ),
    );
  }
}
