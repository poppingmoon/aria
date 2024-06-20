import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/post_notifier_provider.dart';
import '../../provider/api/tag_notes_notifier_provider.dart';
import '../widget/note_widget.dart';
import '../widget/paginated_list_view.dart';

class TagPage extends ConsumerWidget {
  const TagPage({
    super.key,
    required this.account,
    required this.tag,
  });

  final Account account;
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(tagNotesNotifierProvider(account, tag));

    return Scaffold(
      appBar: AppBar(title: Text('#$tag')),
      body: PaginatedListView(
        paginationState: notes,
        itemBuilder: (context, note) =>
            NoteWidget(account: account, noteId: note.id),
        onRefresh: () =>
            ref.refresh(tagNotesNotifierProvider(account, tag).future),
        loadMore: (skipError) => ref
            .read(tagNotesNotifierProvider(account, tag).notifier)
            .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noNotes,
      ),
      floatingActionButton: account.isGuest
          ? null
          : FloatingActionButton.extended(
              onPressed: () {
                ref
                    .read(postNotifierProvider(account).notifier)
                    .setText('#$tag ');
                context.push('/$account/post');
              },
              label: Text(t.misskey.postToHashtag),
              icon: const Icon(Icons.edit),
            ),
    );
  }
}
