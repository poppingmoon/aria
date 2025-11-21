import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/inifite_scroll_extent_threshold.dart';
import '../../constant/max_content_width.dart';
import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/search_users_by_username_provider.dart';
import '../../provider/api/search_users_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/recently_used_users_notifier_provider.dart';
import '../../util/punycode.dart';
import '../widget/error_message.dart';
import '../widget/pagination_bottom_widget.dart';
import '../widget/user_preview.dart';
import '../widget/user_sheet.dart';

Future<UserDetailed?> selectUser(
  BuildContext context,
  Account account, {
  bool includeSelf = false,
  bool localOnly = false,
}) {
  return showDialog(
    context: context,
    builder: (context) => UserSelectDialog(
      account: account,
      includeSelf: includeSelf,
      localOnly: localOnly,
    ),
  );
}

class UserSelectDialog extends HookConsumerWidget {
  const UserSelectDialog({
    super.key,
    required this.account,
    this.includeSelf = false,
    this.localOnly = false,
  });

  final Account account;
  final bool includeSelf;
  final bool localOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final query = useState('');
    final debouncedQuery =
        useDebounced(query.value, const Duration(milliseconds: 500)) ?? '';
    final host = useState('');
    final debouncedHost =
        useDebounced(host.value, const Duration(milliseconds: 500)) ?? '';
    final searchByUsername = useState(
      ref.watch(
        generalSettingsNotifierProvider.select(
          (settings) => settings.searchUsersByUsername,
        ),
      ),
    );
    final users = switch (searchByUsername.value) {
      true when debouncedQuery.isNotEmpty || debouncedHost.isNotEmpty =>
        ref.watch(
          searchUsersByUsernameProvider(
            account,
            debouncedQuery.isNotEmpty ? debouncedQuery : null,
            localOnly
                ? '.'
                : debouncedHost.isNotEmpty
                ? toAscii(debouncedHost)
                : null,
            limit: 30,
          ).select<AsyncValue<PaginationState<UserDetailed>>>(
            (users) => switch (users) {
              AsyncValue(value: final users?) => AsyncValue.data(
                PaginationState(items: users, isLastLoaded: true),
              ),
              AsyncValue(:final error?, :final stackTrace?) => AsyncValue.error(
                error,
                stackTrace,
              ),
              _ => const AsyncValue.loading(),
            },
          ),
        ),
      false when debouncedQuery.isNotEmpty => ref.watch(
        searchUsersNotifierProvider(
          account,
          debouncedQuery,
          userOrigin: localOnly ? Origin.local : null,
        ),
      ),
      _ => null,
    };
    final recentlyUsedUsers = ref.watch(
      recentlyUsedUsersNotifierProvider(account),
    );
    final enableInfiniteScroll = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableInfiniteScroll,
      ),
    );
    final controller = useScrollController();
    final isAtBottom = useState(false);
    useEffect(() {
      void callback() {
        if (controller.position.extentAfter < infiniteScrollExtentThreshold) {
          if (!isAtBottom.value) {
            if (!searchByUsername.value) {
              ref
                  .read(
                    searchUsersNotifierProvider(
                      account,
                      query.value,
                      userOrigin: localOnly ? Origin.local : null,
                    ).notifier,
                  )
                  .loadMore();
            }
          }
        }
      }

      if (enableInfiniteScroll) {
        controller.addListener(callback);
      }
      return () => controller.removeListener(callback);
    }, []);
    useEffect(() {
      Future(
        () => ref
            .read(generalSettingsNotifierProvider.notifier)
            .setSearchUsersByUsername(searchByUsername.value),
      );
      return;
    }, [searchByUsername.value]);
    final theme = Theme.of(context);

    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text(t.misskey.selectUser)),
          if (searchByUsername.value)
            IconButton(
              tooltip: t.misskey.search,
              onPressed: () => searchByUsername.value = false,
              icon: const Icon(Icons.search),
            )
          else
            IconButton(
              tooltip: t.misskey.username,
              onPressed: () => searchByUsername.value = true,
              icon: const Icon(Icons.alternate_email),
            ),
        ],
      ),
      content: SizedBox(
        width: maxContentWidth,
        child: CustomScrollView(
          controller: controller,
          slivers: [
            PinnedHeaderSliver(
              child: Shortcuts(
                shortcuts: disablingTextShortcuts,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: searchByUsername.value
                              ? t.misskey.username
                              : t.misskey.search,
                          prefixText: searchByUsername.value ? '@' : null,
                          prefixIcon: !searchByUsername.value
                              ? const Icon(Icons.search)
                              : null,
                          enabledBorder: theme.inputDecorationTheme.border,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        onChanged: (value) => query.value = value,
                        keyboardType: TextInputType.url,
                        textInputAction: TextInputAction.next,
                        onTapOutside: (_) => primaryFocus?.unfocus(),
                      ),
                    ),
                    if (searchByUsername.value && !localOnly) ...[
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: t.misskey.host,
                            prefixText: '@',
                            enabledBorder: theme.inputDecorationTheme.border,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                          onChanged: (value) => host.value = value,
                          keyboardType: TextInputType.url,
                          textInputAction: TextInputAction.done,
                          onTapOutside: (_) => primaryFocus?.unfocus(),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            if (users == null)
              switch (recentlyUsedUsers) {
                AsyncValue(value: final recentlyUsedUsers?) => Builder(
                  builder: (context) {
                    final users = recentlyUsedUsers
                        .where(
                          (user) =>
                              (includeSelf || user.id != i?.id) &&
                              (!localOnly || user.host == null),
                        )
                        .toList();

                    return SliverList.separated(
                      itemBuilder: (context, index) => UserPreview(
                        account: account,
                        user: users[index],
                        onTap: () => context.pop(users[index]),
                        onLongPress: () => showUserSheet(
                          context: context,
                          account: account,
                          userId: users[index].id,
                        ),
                      ),
                      separatorBuilder: (_, _) => const Divider(height: 0.0),
                      itemCount: users.length,
                    );
                  },
                ),
                AsyncValue(:final error?, :final stackTrace) =>
                  SliverToBoxAdapter(
                    child: ErrorMessage(error: error, stackTrace: stackTrace),
                  ),
                _ => const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: CircularProgressIndicator()),
                ),
              }
            else
              ...switch (users) {
                AsyncValue(:final value?) => [
                  if (value.items
                          .where((user) => includeSelf || user.id != i?.id)
                          .toList()
                      case final users when users.isNotEmpty)
                    SliverList.separated(
                      itemBuilder: (context, index) => UserPreview(
                        account: account,
                        user: users[index],
                        onTap: () => context.pop(users[index]),
                        onLongPress: () => showUserSheet(
                          context: context,
                          account: account,
                          userId: users[index].id,
                        ),
                      ),
                      separatorBuilder: (_, _) => const Divider(height: 0.0),
                      itemCount: users.length,
                    )
                  else
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(child: Text(t.misskey.noUsers)),
                    ),
                  if (!value.isLastLoaded && !searchByUsername.value)
                    SliverToBoxAdapter(
                      child: PaginationBottomWidget(
                        paginationState: users,
                        loadMore: () => ref.read(
                          searchUsersNotifierProvider(
                            account,
                            debouncedQuery,
                            userOrigin: localOnly ? Origin.local : null,
                          ),
                        ),
                        height: 40.0,
                      ),
                    ),
                ],
                AsyncValue(:final error?, :final stackTrace) => [
                  SliverToBoxAdapter(
                    child: ErrorMessage(error: error, stackTrace: stackTrace),
                  ),
                ],
                _ => [
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ],
              },
          ],
        ),
      ),
    );
  }
}
