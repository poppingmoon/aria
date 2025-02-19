import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/liked_pages_notifier_provider.dart';
import '../../widget/page_preview.dart';
import '../../widget/paginated_list_view.dart';

class PagesLiked extends ConsumerWidget {
  const PagesLiked({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likes = ref.watch(likedPagesNotifierProvider(account));

    return PaginatedListView(
      paginationState: likes,
      itemBuilder:
          (context, like) => PagePreview(
            account: account,
            page: like.page,
            onTap: () => context.push('/$account/pages/${like.page.id}'),
          ),
      onRefresh: () => ref.refresh(likedPagesNotifierProvider(account).future),
      loadMore:
          (skipError) => ref
              .read(likedPagesNotifierProvider(account).notifier)
              .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.nothing,
    );
  }
}
