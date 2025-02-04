import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import 'image_widget.dart';

class RolePreview extends ConsumerWidget {
  const RolePreview({
    super.key,
    required this.account,
    required this.role,
    this.onTap,
  });

  final Account account;
  final RolesListResponse role;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = role.color != null ? Color(0xFF000000 | role.color!) : null;

    return DecoratedBox(
      decoration: BoxDecoration(
        border: color != null
            ? BorderDirectional(start: BorderSide(color: color, width: 4.0))
            : null,
      ),
      child: ListTile(
        leading: switch (role) {
          RolesListResponse(:final iconUrl?) => ImageWidget(
              url: iconUrl.toString(),
              width: 28.0,
              height: 28.0,
            ),
          RolesListResponse(isAdministrator: true) => Icon(
              Symbols.crown,
              color: Theme.of(context).colorScheme.primary,
              size: 28.0,
              fill: 1.0,
            ),
          RolesListResponse(isModerator: true) => Icon(
              Icons.shield,
              color: Theme.of(context).colorScheme.primary,
              size: 28.0,
            ),
          _ => Icon(
              Icons.person,
              color: Theme.of(context)
                  .colorScheme
                  .onSurface
                  .withValues(alpha: 0.7),
              size: 28.0,
            )
        },
        title: Text(role.name),
        subtitle: Text(role.description ?? ''),
        trailing: Text(t.misskey.nUsers(n: role.usersCount)),
        onTap: onTap,
      ),
    );
  }
}
