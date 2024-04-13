import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_lists_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../widget/error_message.dart';

class UserLists extends ConsumerWidget {
  const UserLists({
    super.key,
    required this.account,
    required this.userId,
  });

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lists = ref.watch(userListsProvider(account, userId));
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return RefreshIndicator(
      onRefresh: () => ref.refresh(userListsProvider(account, userId).future),
      child: Center(
        child: lists.when(
          data: (lists) {
            if (lists.isEmpty) {
              return Text(t.misskey.noLists);
            } else {
              return Container(
                width: 800.0,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTileTheme(
                  tileColor: colors.panel,
                  child: ListView(
                    children: [
                      Container(
                        height: 8.0,
                        margin: const EdgeInsets.only(top: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                          color: colors.panel,
                        ),
                      ),
                      ...ListTile.divideTiles(
                        context: context,
                        tiles: lists.map(
                          (list) => ListTile(
                            title: Text(list.name ?? ''),
                            subtitle:
                                Text(t.misskey.nUsers(n: list.userIds.length)),
                            onTap: () => context.push(
                              '/$account/users/$userId/list/${list.id}',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 8.0,
                        margin: const EdgeInsets.only(bottom: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                          color: colors.panel,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
          error: (e, st) => ErrorMessage(error: e, stackTrace: st),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
