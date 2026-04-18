import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/search_plays_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/play_preview.dart';

class PlaysSearch extends HookConsumerWidget {
  const PlaysSearch({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useState('');
    final plays = query.value.isNotEmpty
        ? ref.watch(searchPlaysNotifierProvider(account, query.value))
        : null;

    return PaginatedListView(
      header: SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: Shortcuts(
                shortcuts: disablingTextShortcuts,
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                  ),
                  onSubmitted: (value) => query.value = value.trim(),
                  textInputAction: TextInputAction.search,
                  onTapOutside: (_) => primaryFocus?.unfocus(),
                ),
              ),
            ),
          ),
        ),
      ),
      paginationState: plays,
      itemBuilder: (context, play) => PlayPreview(
        account: account,
        play: play,
        onTap: () => context.push('/$account/play/${play.id}'),
      ),
      onRefresh: () =>
          ref.refresh(searchPlaysNotifierProvider(account, query.value).future),
      loadMore: (skipError) => ref
          .read(searchPlaysNotifierProvider(account, query.value).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
