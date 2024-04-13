import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
                  : ListView.separated(
                      itemBuilder: (context, index) => RolePreview(
                        account: account,
                        role: manualRoles[index],
                        onTap: () => context
                            .push('/$account/roles/${manualRoles[index].id}'),
                      ),
                      separatorBuilder: (_, __) => const Divider(height: 0.0),
                      itemCount: manualRoles.length,
                    );
            },
          ),
        AsyncValue(:final error?, :final stackTrace) =>
          ErrorMessage(error: error, stackTrace: stackTrace),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
