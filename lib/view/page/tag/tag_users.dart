import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/tag_users_provider.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/error_message.dart';
import '../../widget/haptic_feedback_refresh_indicator.dart';
import '../../widget/user_info.dart';
import '../../widget/users_sort_type_widget.dart';

class TagUsers extends HookConsumerWidget {
  const TagUsers({super.key, required this.account, required this.tag});

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
    final theme = Theme.of(context);

    return NestedScrollView(
      headerSliverBuilder: (context, _) => [
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ExpansionTile(
                leading: const Icon(Icons.tune),
                title: Text(t.misskey.options),
                backgroundColor: theme.colorScheme.surface,
                collapsedBackgroundColor: theme.colorScheme.surface,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                children: [
                  const Divider(height: 1.0),
                  ListTile(
                    title: Text(t.misskey.sort),
                    subtitle: UsersSortTypeWidget(sort: sort.value),
                    onTap: () async {
                      final result = await showRadioDialog(
                        context,
                        title: Text(t.misskey.sort),
                        values: UsersSortType.values,
                        initialValue: sort.value,
                        titleBuilder: (context, sort) =>
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
            ),
          ),
        ),
      ],
      body: HapticFeedbackRefreshIndicator(
        onRefresh: () => ref.refresh(tagUsersProvider(account, tag).future),
        child: switch (users) {
          AsyncValue(valueOrNull: final users?) =>
            users.isEmpty
                ? Center(child: Text(t.misskey.noUsers))
                : ListView.separated(
                    itemBuilder: (context, index) => Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: maxContentWidth,
                        padding: index == users.length - 1
                            ? const EdgeInsets.only(bottom: 120.0)
                            : null,
                        child: UserInfo(account: account, user: users[index]),
                      ),
                    ),
                    separatorBuilder: (context, _) =>
                        const SizedBox(height: 8.0),
                    itemCount: users.length,
                  ),
          AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
            child: ErrorMessage(error: error, stackTrace: stackTrace),
          ),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
      physics: users.valueOrNull?.isEmpty ?? true
          ? const NeverScrollableScrollPhysics()
          : null,
    );
  }
}
