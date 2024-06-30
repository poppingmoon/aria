import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/tag_users_provider.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/error_message.dart';
import '../../widget/user_info.dart';
import '../../widget/users_sort_type_widget.dart';

class TagUsers extends HookConsumerWidget {
  const TagUsers({
    super.key,
    required this.account,
    required this.tag,
  });

  final Account account;
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sort = useState(UsersSortType.followerDescendant);
    final localOnly = useState(false);
    final users = ref.watch(
      tagUsersProvider(
        account,
        tag,
        sort: sort.value,
        userOrigin: localOnly.value ? Origin.local : Origin.combined,
      ),
    );

    return RefreshIndicator(
      onRefresh: () => ref.refresh(tagUsersProvider(account, tag).future),
      child: Center(
        child: Container(
          width: 800.0,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              ExpansionTile(
                title: Text(t.misskey.options),
                children: [
                  ListTile(
                    title: Text(t.misskey.sort),
                    subtitle: UsersSortTypeWidget(sort: sort.value),
                    onTap: () async {
                      final result = await showRadioDialog(
                        context,
                        title: Text(t.misskey.sort),
                        values: UsersSortType.values,
                        initialValue: sort.value,
                        itemBuilder: (context, sort) =>
                            UsersSortTypeWidget(sort: sort),
                      );
                      if (!context.mounted) return;
                      if (result != null) {
                        sort.value = result;
                      }
                    },
                  ),
                  SwitchListTile(
                    title: Text(t.misskey.localOnly),
                    value: localOnly.value,
                    onChanged: (value) => localOnly.value = value,
                  ),
                ],
              ),
              ...switch (users) {
                AsyncValue(valueOrNull: final users?) => users.isEmpty
                    ? [Center(child: Text(t.misskey.noUsers))]
                    : [
                        ...users.map(
                          (user) => UserInfo(account: account, user: user),
                        ),
                        const SizedBox(height: 80.0),
                      ],
                AsyncValue(:final error?, :final stackTrace) => [
                    ErrorMessage(error: error, stackTrace: stackTrace),
                  ],
                _ => const [Center(child: CircularProgressIndicator())],
              },
            ],
          ),
        ),
      ),
    );
  }
}
