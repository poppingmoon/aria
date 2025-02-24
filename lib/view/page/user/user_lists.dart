import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_lists_provider.dart';
import '../../widget/error_message.dart';

class UserLists extends ConsumerWidget {
  const UserLists({super.key, required this.account, required this.userId});

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lists = ref.watch(userListsProvider(account, userId));

    return RefreshIndicator(
      onRefresh: () => ref.refresh(userListsProvider(account, userId).future),
      child: switch (lists) {
        AsyncValue(valueOrNull: final lists?) =>
          lists.isEmpty
              ? Center(child: Text(t.misskey.noLists))
              : ListView.separated(
                itemBuilder:
                    (context, index) => Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 8.0,
                          top: index == 0 ? 8.0 : 0.0,
                          right: 8.0,
                          bottom: index == lists.length - 1 ? 8.0 : 0.0,
                        ),
                        width: maxContentWidth,
                        child: ListTile(
                          title: Text(lists[index].name ?? ''),
                          subtitle: Text(
                            t.misskey.nUsers(n: lists[index].userIds.length),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          tileColor: Theme.of(context).colorScheme.surface,
                          onTap:
                              () => context.push(
                                '/$account/users/$userId/list/${lists[index].id}',
                              ),
                        ),
                      ),
                    ),
                separatorBuilder:
                    (_, _) => const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: maxContentWidth,
                          child: Divider(height: 0.0),
                        ),
                      ),
                    ),
                itemCount: lists.length,
              ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
