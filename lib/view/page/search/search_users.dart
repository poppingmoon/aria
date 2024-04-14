import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/search_users_notifier_provider.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_info.dart';

class SearchUsers extends HookConsumerWidget {
  const SearchUsers({
    super.key,
    required this.account,
    this.focusNode,
  });

  final Account account;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final query = useState('');
    final origin = useState(Origin.combined);
    final users = query.value.isNotEmpty
        ? ref.watch(
            searchUsersNotifierProvider(
              account,
              query.value,
              userOrigin: origin.value,
            ),
          )
        : null;

    return PaginatedListView(
      header: SliverList.list(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                decoration:
                    const InputDecoration(prefixIcon: Icon(Icons.search)),
                autofocus: true,
                onSubmitted: (value) => query.value = value.trim(),
                textInputAction: TextInputAction.search,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => query.value = controller.text.trim(),
              child: Text(t.misskey.search),
            ),
          ),
        ],
      ),
      paginationState: users,
      itemBuilder: (context, user) => UserInfo(account: account, user: user),
      onRefresh: () => ref.refresh(
        searchUsersNotifierProvider(
          account,
          query.value,
          userOrigin: origin.value,
        ).future,
      ),
      loadMore: (skipError) => ref
          .read(
            searchUsersNotifierProvider(
              account,
              query.value,
              userOrigin: origin.value,
            ).notifier,
          )
          .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.noUsers,
    );
  }
}
