import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_featured_notes_notifier_provider.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';

class const UserFeatured({
  super.key,
  required final Account account,
  required final String userId,
}) extends ConsumerWidget {
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
