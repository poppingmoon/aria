import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_notes_notifier_provider.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';

class ChannelFeatured extends ConsumerWidget {
  const ChannelFeatured({
    super.key,
    required this.account,
    required this.channelId,
  });

  final Account account;
  final String channelId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(
      featuredNotesNotifierProvider(account, channelId: channelId),
    );
    return PaginatedListView(
      paginationState: notes,
      itemBuilder:
          (context, note) => NoteWidget(account: account, noteId: note.id),
      onRefresh:
          () => ref.refresh(
            featuredNotesNotifierProvider(account, channelId: channelId).future,
          ),
      loadMore:
          (skipError) => ref
              .read(
                featuredNotesNotifierProvider(
                  account,
                  channelId: channelId,
                ).notifier,
              )
              .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
