import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/plays_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/play_preview.dart';

class PlaysMy extends ConsumerWidget {
  const PlaysMy({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plays = ref.watch(playsNotifierProvider(account));

    return PaginatedListView(
      paginationState: plays,
      itemBuilder: (context, play) => PlayPreview(
        account: account,
        play: play,
        hideUserInfo: true,
        onTap: () => context.push('/$account/play/${play.id}'),
      ),
      onRefresh: () => ref.refresh(playsNotifierProvider(account).future),
      loadMore: (skipError) => ref
          .read(playsNotifierProvider(account).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
