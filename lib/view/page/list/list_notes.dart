import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/tab_settings.dart';
import '../../../provider/api/timeline_notes_notifier_provider.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';

class ListNotes extends ConsumerWidget {
  const ListNotes({
    super.key,
    required this.account,
    required this.listId,
  });

  final Account account;
  final String listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabSettings = TabSettings.userList(account, listId);
    final notes = ref.watch(timelineNotesNotifierProvider(tabSettings));

    return PaginatedListView(
      paginationState: notes,
      itemBuilder: (context, note) =>
          NoteWidget(account: account, noteId: note.id),
      onRefresh: () =>
          ref.refresh(timelineNotesNotifierProvider(tabSettings).future),
      loadMore: (skipError) => ref
          .read(timelineNotesNotifierProvider(tabSettings).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
