import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_following_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_info.dart';

class FollowingPage extends ConsumerWidget {
  const FollowingPage({
    super.key,
    required this.account,
    required this.userId,
  });

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final following = ref.watch(userFollowingNotifierProvider(account, userId));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.following)),
      body: PaginatedListView(
        paginationState: following,
        itemBuilder: (context, relation) => UserInfo(
          account: account,
          user: relation.followee!,
        ),
        onRefresh: () =>
            ref.refresh(userFollowingNotifierProvider(account, userId).future),
        loadMore: (skipError) => ref
            .read(userFollowingNotifierProvider(account, userId).notifier)
            .loadMore(skipError: skipError),
      ),
    );
  }
}
