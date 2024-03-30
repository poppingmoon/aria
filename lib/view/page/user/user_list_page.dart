import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/list_provider.dart';
import '../../../provider/api/list_users_provider.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/error_message.dart';
import '../../widget/like_button.dart';
import '../../widget/user_tile.dart';

class UserListPage extends HookConsumerWidget {
  const UserListPage({
    super.key,
    required this.account,
    required this.listId,
  });

  final Account account;
  final String listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list =
        ref.watch(listProvider(account, listId, forPublic: true)).valueOrNull;
    final users =
        ref.watch(listUsersProvider(account, listId, forPublic: true));
    final isLiked = list?.isLiked ?? false;
    final likedCount = list?.likedCount ?? 0;

    return Scaffold(
      appBar: AppBar(title: Text(list?.name ?? '')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(t.misskey.members),
          ),
          ...switch (users) {
            AsyncValue(valueOrNull: final users?) => users.map(
                (user) => UserTile(
                  account: account,
                  user: user,
                  onTap: () => context.push('$account/users/${user.id}'),
                ),
              ),
            AsyncValue(:final error?, :final stackTrace) => [
                ErrorMessage(error: error, stackTrace: stackTrace),
              ],
            _ => [const Center(child: CircularProgressIndicator())],
          },
          if (!account.isGuest)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LikeButton(
                    isLiked: isLiked,
                    likedCount: likedCount,
                    onTap: () async {
                      if (isLiked) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(misskeyProvider(account))
                              .users
                              .list
                              .unfavorite(
                                UsersListsUnfavoriteRequest(listId: listId),
                              ),
                        );
                      } else {
                        await futureWithDialog(
                          context,
                          ref
                              .read(misskeyProvider(account))
                              .users
                              .list
                              .favorite(
                                UsersListsFavoriteRequest(listId: listId),
                              ),
                        );
                      }
                      ref.invalidate(
                        listProvider(account, listId, forPublic: true),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton.icon(
                    onPressed: () async {
                      final name = await showTextFieldDialog(
                        context,
                        title: Text(t.misskey.enterListName),
                      );
                      if (!context.mounted) return;
                      if (name == null || name.isEmpty) return;
                      await futureWithDialog(
                        context,
                        ref
                            .read(misskeyProvider(account))
                            .users
                            .list
                            .createFromPublic(
                              UsersListsCreateFromPublicRequest(
                                name: name,
                                listId: listId,
                              ),
                            ),
                      );
                    },
                    icon: const Icon(Icons.download),
                    label: Text(t.misskey.import),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
