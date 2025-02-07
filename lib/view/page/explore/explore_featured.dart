import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_notes_notifier_provider.dart';
import '../../../provider/api/featured_polls_notifier_provider.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';

enum _NoteType { notes, polls }

class ExploreFeatured extends HookConsumerWidget {
  const ExploreFeatured({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = useState(_NoteType.notes);
    final notes = switch (type.value) {
      _NoteType.notes => ref.watch(featuredNotesNotifierProvider(account)),
      _NoteType.polls => ref.watch(featuredPollsNotifierProvider(account)),
    };

    return PaginatedListView(
      header: SliverPadding(
        padding: const EdgeInsets.all(8.0),
        sliver: SliverToBoxAdapter(
          child: SegmentedButton(
            segments: [
              ButtonSegment(
                value: _NoteType.notes,
                label: Text(t.misskey.notes),
              ),
              ButtonSegment(
                value: _NoteType.polls,
                label: Text(t.misskey.poll),
              ),
            ],
            selected: {type.value},
            onSelectionChanged: (selection) => type.value = selection.single,
          ),
        ),
      ),
      paginationState: notes,
      itemBuilder: (context, note) =>
          NoteWidget(account: account, noteId: note.id),
      onRefresh: () => switch (type.value) {
        _NoteType.notes =>
          ref.refresh(featuredNotesNotifierProvider(account).future),
        _NoteType.polls =>
          ref.refresh(featuredPollsNotifierProvider(account).future),
      },
      loadMore: switch (type.value) {
        _NoteType.notes => (skipError) => ref
            .read(featuredNotesNotifierProvider(account).notifier)
            .loadMore(skipError: skipError),
        _NoteType.polls => (skipError) => ref
            .read(featuredPollsNotifierProvider(account).notifier)
            .loadMore(skipError: skipError),
      },
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
