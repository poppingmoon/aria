import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_pages_notifier_provider.dart';
import '../../widget/page_preview.dart';
import '../../widget/paginated_list_view.dart';

class UserPages extends ConsumerWidget {
  const UserPages({
    super.key,
    required this.account,
    required this.userId,
  });

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(userPagesNotifierProvider(account, userId));

    return PaginatedListView(
      paginationState: pages,
      itemBuilder: (context, page) => PagePreview(
        account: account,
        page: page,
        onTap: () => context.push('/$account/pages/${page.id}'),
      ),
      onRefresh: () => ref.refresh(
        userPagesNotifierProvider(account, userId).future,
      ),
      loadMore: (skipError) => ref
          .read(
            userPagesNotifierProvider(account, userId).notifier,
          )
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
