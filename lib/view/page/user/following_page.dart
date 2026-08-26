import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_following_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_info.dart';

class const FollowingPage({
  super.key,
  required final Account account,
  required final String userId,
}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final following = ref.watch(userFollowingNotifierProvider(account, userId));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.following)),
      body: PaginatedListView(
        paginationState: following,
        itemBuilder: (context, relation) =>
            UserInfo(account: account, user: relation.followee!),
        onRefresh: () =>
            ref.refresh(userFollowingNotifierProvider(account, userId).future),
        loadMore: (skipError) => ref
            .read(userFollowingNotifierProvider(account, userId).notifier)
            .loadMore(skipError: skipError),
        panel: false,
        noItemsLabel: t.misskey.noUsers,
      ),
    );
  }
}
