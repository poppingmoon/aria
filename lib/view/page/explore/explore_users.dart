import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/pinned_users_provider.dart';
import '../../../provider/api/users_notifier_provider.dart';
import '../../../util/punycode.dart';
import '../../widget/error_message.dart';
import '../../widget/misskey_server_autocomplete.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_info.dart';

enum _UserType { pinned, local, remote }

class ExploreUsers extends HookConsumerWidget {
  const ExploreUsers({
    super.key,
    required this.account,
    this.host,
  });

  final Account account;
  final String? host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type =
        useState(this.host == null ? _UserType.pinned : _UserType.remote);
    final sort = useState(UsersSortType.followerDescendant);
    final controller = useTextEditingController(text: this.host);
    final focusNode = useFocusNode();
    final host = useState(this.host);
    final users = switch (type.value) {
      _UserType.pinned => null,
      _UserType.local => ref.watch(
          usersNotifierProvider(
            account,
            userOrigin: Origin.local,
            sort: sort.value,
          ),
        ),
      _UserType.remote => ref.watch(
          usersNotifierProvider(
            account,
            userOrigin: Origin.remote,
            sort: sort.value,
            host: host.value,
          ),
        ),
    };
    final pinnedUsers = type.value == _UserType.pinned
        ? ref.watch(pinnedUsersProvider(account))
        : null;

    return PaginatedListView(
      header: SliverList.list(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SegmentedButton(
              segments: [
                ButtonSegment(
                  value: _UserType.pinned,
                  label: Text(t.misskey.pinnedUsers),
                ),
                ButtonSegment(
                  value: _UserType.local,
                  label: Text(t.misskey.local),
                ),
                ButtonSegment(
                  value: _UserType.remote,
                  label: Text(t.misskey.remote),
                ),
              ],
              selected: {type.value},
              onSelectionChanged: (selection) => type.value = selection.single,
            ),
          ),
          if (type.value == _UserType.pinned)
            ...switch (pinnedUsers) {
              AsyncValue(valueOrNull: final users?) => users.isNotEmpty
                  ? users.map((user) => UserInfo(account: account, user: user))
                  : [Center(child: Text(t.misskey.noUsers))],
              AsyncValue(:final error?, :final stackTrace) => [
                  ErrorMessage(error: error, stackTrace: stackTrace),
                ],
              _ => const [Center(child: CircularProgressIndicator())],
            }
          else ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Flexible(child: Center(child: Text(t.misskey.sort))),
                  Flexible(
                    flex: 3,
                    child: DropdownButton(
                      isExpanded: true,
                      items: [
                        DropdownMenuItem(
                          value: UsersSortType.followerAscendant,
                          child: Text(
                            '${t.misskey.followersCount} (${t.misskey.ascendingOrder})',
                          ),
                        ),
                        DropdownMenuItem(
                          value: UsersSortType.followerDescendant,
                          child: Text(
                            '${t.misskey.followersCount} (${t.misskey.descendingOrder})',
                          ),
                        ),
                        DropdownMenuItem(
                          value: UsersSortType.createdAtAscendant,
                          child: Text(
                            '${t.misskey.createdAt} (${t.misskey.ascendingOrder})',
                          ),
                        ),
                        DropdownMenuItem(
                          value: UsersSortType.createdAtDescendant,
                          child: Text(
                            '${t.misskey.createdAt} (${t.misskey.descendingOrder})',
                          ),
                        ),
                        DropdownMenuItem(
                          value: UsersSortType.updateAtAscendant,
                          child: Text(
                            '${t.misskey.updatedAt} (${t.misskey.ascendingOrder})',
                          ),
                        ),
                        DropdownMenuItem(
                          value: UsersSortType.updateAtDescendant,
                          child: Text(
                            '${t.misskey.updatedAt} (${t.misskey.descendingOrder})',
                          ),
                        ),
                      ],
                      value: sort.value,
                      onChanged: (value) {
                        if (value != null) {
                          sort.value = value;
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            if (type.value == _UserType.remote)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MisskeyServerAutocomplete(
                  controller: controller,
                  focusNode: focusNode,
                  onSubmitted: (value) {
                    final text = toAscii(
                      value
                          .trim()
                          .replaceFirst('https://', '')
                          .split('/')
                          .first,
                    ).toLowerCase();
                    host.value = text.isNotEmpty ? text : null;
                  },
                ),
              ),
          ],
        ],
      ),
      paginationState: users,
      itemBuilder: (context, user) => UserInfo(account: account, user: user),
      onRefresh: () => switch (type.value) {
        _UserType.pinned => ref.refresh(pinnedUsersProvider(account).future),
        _UserType.local => ref.refresh(
            usersNotifierProvider(
              account,
              userOrigin: Origin.local,
              sort: sort.value,
            ).future,
          ),
        _UserType.remote => ref.refresh(
            usersNotifierProvider(
              account,
              userOrigin: Origin.remote,
              sort: sort.value,
              host: host.value,
            ).future,
          ),
      },
      loadMore: switch (type.value) {
        _UserType.pinned => null,
        _UserType.local => (skipError) => ref
            .read(
              usersNotifierProvider(
                account,
                userOrigin: Origin.local,
                sort: sort.value,
              ).notifier,
            )
            .loadMore(skipError: skipError),
        _UserType.remote => (skipError) => ref
            .read(
              usersNotifierProvider(
                account,
                userOrigin: Origin.remote,
                sort: sort.value,
                host: host.value,
              ).notifier,
            )
            .loadMore(skipError: skipError),
      },
      panel: false,
      noItemsLabel: t.misskey.noUsers,
    );
  }
}
