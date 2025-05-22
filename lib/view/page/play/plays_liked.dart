import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/liked_plays_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/play_preview.dart';

class PlaysLiked extends ConsumerWidget {
  const PlaysLiked({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likes = ref.watch(likedPlaysNotifierProvider(account));

    return PaginatedListView(
      paginationState: likes,
      itemBuilder: (context, like) => PlayPreview(
        account: account,
        play: like.flash,
        onTap: () => context.push('/$account/play/${like.flash.id}'),
      ),
      onRefresh: () => ref.refresh(likedPlaysNotifierProvider(account).future),
      loadMore: (skipError) => ref
          .read(likedPlaysNotifierProvider(account).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
