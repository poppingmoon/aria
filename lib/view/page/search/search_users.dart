import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/search_users_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_info.dart';

class SearchUsers extends HookConsumerWidget {
  const SearchUsers({super.key, required this.account, required this.query});

  final Account account;
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final origin = useState(Origin.combined);
    final users = query.isNotEmpty
        ? ref.watch(
            searchUsersNotifierProvider(
              account,
              query,
              userOrigin: origin.value,
            ),
          )
        : null;

    return PaginatedListView(
      header: SliverList.list(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SegmentedButton(
                segments: [
                  ButtonSegment(
                    value: Origin.combined,
                    label: Text(t.misskey.all),
                  ),
                  ButtonSegment(
                    value: Origin.local,
                    label: Text(t.misskey.local),
                  ),
                  ButtonSegment(
                    value: Origin.remote,
                    label: Text(t.misskey.remote),
                  ),
                ],
                selected: {origin.value},
                onSelectionChanged: (selection) =>
                    origin.value = selection.single,
              ),
            ),
          ),
        ],
      ),
      paginationState: users,
      itemBuilder: (context, user) => UserInfo(account: account, user: user),
      onRefresh: () => ref.refresh(
        searchUsersNotifierProvider(
          account,
          query,
          userOrigin: origin.value,
        ).future,
      ),
      loadMore: (skipError) => ref
          .read(
            searchUsersNotifierProvider(
              account,
              query,
              userOrigin: origin.value,
            ).notifier,
          )
          .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.noUsers,
    );
  }
}
