import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/list_provider.dart';
import '../../../provider/api/list_users_notifier_provider.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/error_message.dart';
import '../../widget/like_button.dart';
import '../../widget/user_preview.dart';
import '../../widget/user_sheet.dart';

class UserListPage extends HookConsumerWidget {
  const UserListPage({super.key, required this.account, required this.listId});

  final Account account;
  final String listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref
        .watch(listProvider(account, listId, forPublic: true))
        .valueOrNull;
    final users = ref.watch(
      listUsersNotifierProvider(account, listId, forPublic: true),
    );
    final isLiked = list?.isLiked ?? false;
    final likedCount = list?.likedCount ?? 0;

    return Scaffold(
      appBar: AppBar(title: Text(list?.name ?? '')),
      body: ListView(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(t.misskey.members),
            ),
          ),
          const SizedBox(height: 8.0),
          ...switch (users) {
            AsyncValue(valueOrNull: final users?) => [
              for (final (index, user) in users.indexed) ...[
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    child: ListTileTheme.merge(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: index == 0
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                          bottom: index == users.length - 1
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                        ),
                      ),
                      tileColor: Theme.of(context).colorScheme.surface,
                      child: UserPreview(
                        account: account,
                        user: user,
                        onTap: () => context.push('/$account/users/${user.id}'),
                        onLongPress: () => showUserSheet(
                          context: context,
                          account: account,
                          userId: user.id,
                        ),
                      ),
                    ),
                  ),
                ),
                if (index < users.length - 1)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: maxContentWidth,
                        child: Divider(height: 0.0),
                      ),
                    ),
                  ),
              ],
            ],
            AsyncValue(:final error?, :final stackTrace) => [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: ErrorMessage(error: error, stackTrace: stackTrace),
                ),
              ),
            ],
            _ => [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          },
          if (!account.isGuest) ...[
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    LikeButton(
                      isLiked: isLiked,
                      likedCount: likedCount,
                      onTap: !account.isGuest
                          ? () async {
                              if (isLiked) {
                                await futureWithDialog(
                                  context,
                                  ref
                                      .read(misskeyProvider(account))
                                      .users
                                      .list
                                      .unfavorite(
                                        UsersListsUnfavoriteRequest(
                                          listId: listId,
                                        ),
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
                                        UsersListsFavoriteRequest(
                                          listId: listId,
                                        ),
                                      ),
                                );
                              }
                              ref.invalidate(
                                listProvider(account, listId, forPublic: true),
                              );
                            }
                          : null,
                    ),
                    OutlinedButton.icon(
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
                  ],
                ),
              ),
            ),
          ],
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
