import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_featured_notes_notifier_provider.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';

class UserFeatured extends ConsumerWidget {
  const UserFeatured({super.key, required this.account, required this.userId});

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(userFeaturedNotesNotifierProvider(account, userId));

    return PaginatedListView(
      paginationState: notes,
      itemBuilder: (context, note) =>
          NoteWidget(account: account, noteId: note.id),
      onRefresh: () => ref.refresh(
        userFeaturedNotesNotifierProvider(account, userId).future,
      ),
      loadMore: (skipError) => ref
          .read(userFeaturedNotesNotifierProvider(account, userId).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
