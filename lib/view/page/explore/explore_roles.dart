import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/roles_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/role_preview.dart';

class ExploreRoles extends ConsumerWidget {
  const ExploreRoles({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roles = ref.watch(rolesProvider(account));

    return RefreshIndicator(
      onRefresh: () => ref.refresh(rolesProvider(account).future),
      child: switch (roles) {
        AsyncValue(valueOrNull: final roles?) => Builder(
          builder: (context) {
            final manualRoles =
                roles.where((role) => role.target == 'manual').toList();
            return manualRoles.isEmpty
                ? Center(child: Text(t.misskey.noRole))
                : ListView.builder(
                  itemBuilder:
                      (context, index) => Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 8.0,
                            top: index == 0 ? 8.0 : 4.0,
                            right: 8.0,
                            bottom: index == manualRoles.length - 1 ? 8.0 : 4.0,
                          ),
                          width: maxContentWidth,
                          child: RolePreview(
                            account: account,
                            role: manualRoles[index],
                            onTap:
                                () => context.push(
                                  '/$account/roles/${manualRoles[index].id}',
                                ),
                          ),
                        ),
                      ),
                  itemCount: manualRoles.length,
                );
          },
        ),
        AsyncValue(:final error?, :final stackTrace) => ErrorMessage(
          error: error,
          stackTrace: stackTrace,
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
