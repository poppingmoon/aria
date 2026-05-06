import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/scheduled_notes_notifier_provider.dart';
import '../widget/paginated_list_view.dart';
import '../widget/scheduled_note_widget.dart';

class ScheduledNotesPage extends ConsumerWidget {
  const ScheduledNotesPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drafts = ref.watch(scheduledNotesNotifierProvider(account));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.scheduled)),
      body: PaginatedListView(
        paginationState: drafts,
        itemBuilder: (context, draft) =>
            ScheduledNoteWidget(account: account, draft: draft),
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
