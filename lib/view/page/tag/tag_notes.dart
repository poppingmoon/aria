import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/id.dart';
import '../../../provider/api/id_gen_method_provider.dart';
import '../../../provider/api/tag_notes_notifier_provider.dart';
import '../../../util/format_datetime.dart';
import '../../../util/pick_date_time.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';

class TagNotes extends HookConsumerWidget {
  const TagNotes({super.key, required this.account, required this.tag});

  final Account account;
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sinceDate = useState<DateTime?>(null);
    final untilDate = useState<DateTime?>(null);
    final method = ref.watch(idGenMethodProvider(account)).valueOrNull;
    final sinceId =
        method != null && sinceDate.value != null
            ? Id(method: method, date: sinceDate.value!).toString()
            : null;
    final untilId =
        method != null && untilDate.value != null
            ? Id(method: method, date: untilDate.value!).toString()
            : null;
    final notes = ref.watch(
      tagNotesNotifierProvider(
        account,
        tag,
        sinceId: sinceId,
        untilId: untilId,
      ),
    );

    return PaginatedListView(
      header: SliverToBoxAdapter(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: maxContentWidth,
            child: ExpansionTile(
              title: Text(t.misskey.options),
              children: [
                ListTile(
                  title: Text(t.aria.sinceDate),
                  subtitle: Text(
                    sinceDate.value != null
                        ? absoluteTime(sinceDate.value!)
                        : t.misskey.notSet,
                  ),
                  trailing:
                      sinceDate.value != null
                          ? IconButton(
                            onPressed: () => sinceDate.value = null,
                            icon: const Icon(Icons.close),
                          )
                          : const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await pickDateTime(
                      context,
                      initialDate: sinceDate.value,
                    );
                    if (result != null) {
                      sinceDate.value = result;
                    }
                  },
                ),
                ListTile(
                  title: Text(t.aria.untilDate),
                  subtitle: Text(
                    untilDate.value != null
                        ? absoluteTime(untilDate.value!)
                        : t.misskey.notSet,
                  ),
                  trailing:
                      untilDate.value != null
                          ? IconButton(
                            onPressed: () => untilDate.value = null,
                            icon: const Icon(Icons.close),
                          )
                          : const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await pickDateTime(
                      context,
                      initialDate: untilDate.value,
                    );
                    if (result != null) {
                      untilDate.value = result;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      paginationState: notes,
      itemBuilder:
          (context, note) => NoteWidget(account: account, noteId: note.id),
      onRefresh:
          () => ref.refresh(
            tagNotesNotifierProvider(
              account,
              tag,
              sinceId: sinceId,
              untilId: untilId,
            ).future,
          ),
      loadMore:
          (skipError) => ref
              .read(
                tagNotesNotifierProvider(
                  account,
                  tag,
                  sinceId: sinceId,
                  untilId: untilId,
                ).notifier,
              )
              .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
