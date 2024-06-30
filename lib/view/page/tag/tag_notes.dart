import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/tag_notes_notifier_provider.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';

class TagNotes extends ConsumerWidget {
  const TagNotes({
    super.key,
    required this.account,
    required this.tag,
  });

  final Account account;
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(tagNotesNotifierProvider(account, tag));

    return PaginatedListView(
      paginationState: notes,
      itemBuilder: (context, note) =>
          NoteWidget(account: account, noteId: note.id),
      footer: const SliverToBoxAdapter(child: SizedBox(height: 80.0)),
      onRefresh: () =>
          ref.refresh(tagNotesNotifierProvider(account, tag).future),
      loadMore: (skipError) => ref
          .read(tagNotesNotifierProvider(account, tag).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
