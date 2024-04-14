import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_followers_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_info.dart';

class FollowersPage extends ConsumerWidget {
  const FollowersPage({
    super.key,
    required this.account,
    required this.userId,
  });

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final followers = ref.watch(userFollowersNotifierProvider(account, userId));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.followers)),
      body: PaginatedListView(
        paginationState: followers,
        itemBuilder: (context, relation) => UserInfo(
          account: account,
          user: relation.follower!,
        ),
        onRefresh: () =>
            ref.refresh(userFollowersNotifierProvider(account, userId).future),
        loadMore: (skipError) => ref
            .read(userFollowersNotifierProvider(account, userId).notifier)
            .loadMore(skipError: skipError),
        panel: false,
        noItemsLabel: t.misskey.noUsers,
      ),
    );
  }
}
