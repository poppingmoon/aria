import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/pages_notifier_provider.dart';
import '../../widget/page_preview.dart';
import '../../widget/paginated_list_view.dart';

class PagesMy extends ConsumerWidget {
  const PagesMy({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(pagesNotifierProvider(account));

    return PaginatedListView(
      paginationState: pages,
      itemBuilder: (context, page) => PagePreview(
        account: account,
        page: page,
        onTap: () => context.push('/$account/pages/${page.id}'),
      ),
      onRefresh: () => ref.refresh(pagesNotifierProvider(account).future),
      loadMore: (skipError) => ref
          .read(pagesNotifierProvider(account).notifier)
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
