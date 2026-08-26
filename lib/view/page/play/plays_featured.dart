import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_plays_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/play_preview.dart';

class const PlaysFeatured({super.key, required final Account account})
    extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plays = ref.watch(featuredPlaysNotifierProvider(account));

    return PaginatedListView(
      paginationState: plays,
      itemBuilder: (context, play) => PlayPreview(
        account: account,
        play: play,
        onTap: () => context.push('/$account/play/${play.id}'),
      ),
      onRefresh: () =>
          ref.refresh(featuredPlaysNotifierProvider(account).future),
      loadMore: (skipError) => ref
          .read(featuredPlaysNotifierProvider(account).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
