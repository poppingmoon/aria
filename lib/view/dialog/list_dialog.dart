import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/lists_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import 'text_field_dialog.dart';

class ListDialog extends HookConsumerWidget {
  const ListDialog({super.key, required this.account, required this.userId});

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lists = ref.watch(listsNotifierProvider(account)).value;
    final i = ref.watch(iNotifierProvider(account)).value;

    return SimpleDialog(
      title: Text(t.misskey.addToList),
      children: [
        ...?lists?.map(
          (list) => CheckboxListTile(
            value: list.userIds.contains(userId),
            title: Text(list.name ?? ''),
            subtitle: Text(
              [
                t.misskey.nUsers(
                  n: [
                    NumberFormat().format(list.userIds.length),
                    if (i?.policies case UserPolicies(
                      :final userEachUserListsLimit?,
                    )) ...[
                      ' / ',
                      NumberFormat().format(userEachUserListsLimit),
                    ],
                  ].join(),
                ),
                if (i?.policies case UserPolicies(
                  :final userEachUserListsLimit?,
                )) ...[
                  ' (',
                  t.misskey.remainingN(
                    n: NumberFormat().format(
                      userEachUserListsLimit - list.userIds.length,
                    ),
                  ),
                  ')',
                ],
              ].join(),
            ),
            onChanged: (value) async {
              if (value == null) return;
              if (value) {
                await futureWithDialog(
                  context,
                  ref
                      .read(listsNotifierProvider(account).notifier)
                      .addUser(list.id, userId),
                );
              } else {
                await futureWithDialog(
                  context,
                  ref
                      .read(listsNotifierProvider(account).notifier)
                      .removeUser(list.id, userId),
                );
              }
            },
          ),
        ),
        ListTile(
          leading: const Icon(Icons.add),
          title: Text(t.misskey.createList),
          onTap: () async {
            final name = await showDialog<String>(
              context: context,
              builder: (context) =>
                  TextFieldDialog(title: Text(t.misskey.enterListName)),
            );
            if (!context.mounted) return;
            if (name != null) {
              await futureWithDialog(
                context,
                ref.read(listsNotifierProvider(account).notifier).create(name),
              );
            }
          },
        ),
      ],
    );
  }
}
