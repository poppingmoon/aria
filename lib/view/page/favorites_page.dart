import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/favorites_notifier_provider.dart';
import '../widget/note_widget.dart';
import '../widget/paginated_list_view.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesNotifierProvider(account));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.favorites)),
      body: PaginatedListView(
        paginationState: favorites,
        itemBuilder: (context, favorite) => NoteWidget(
          account: account,
          noteId: favorite.noteId,
          withHardMute: false,
        ),
        onRefresh: () => ref.refresh(favoritesNotifierProvider(account).future),
        loadMore: (skipError) => ref
            .read(favoritesNotifierProvider(account).notifier)
            .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noNotes,
      ),
    );
  }
}
