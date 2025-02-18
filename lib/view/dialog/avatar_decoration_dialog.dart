import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/avatar_decorations_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/role_provider.dart';
import '../widget/image_widget.dart';
import '../widget/key_value_widget.dart';
import '../widget/mfm.dart';
import '../widget/role_chip.dart';
import '../widget/user_avatar.dart';

class AvatarDecorationDialog extends HookConsumerWidget {
  const AvatarDecorationDialog({
    super.key,
    required this.account,
    required this.decoration,
    this.index,
  });

  final Account account;
  final UserAvatarDecoration decoration;
  final int? index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final avatarDecorations =
        ref.watch(avatarDecorationsProvider(account)).valueOrNull;
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final data = avatarDecorations?.firstWhereOrNull(
      (e) => e.id == decoration.id,
    );
    final roleIds = data?.roleIdsThatCanBeUsedThisDecoration ?? [];
    final roles =
        roleIds
            .map(
              (roleId) => ref.watch(roleProvider(account, roleId)).valueOrNull,
            )
            .toList();
    final canUse =
        roleIds.isEmpty ||
        (i?.roles?.any((role) => roleIds.contains(role.id)) ?? false);
    const minAngle = -0.5;
    const maxAngle = 0.5;
    const minOffsetX = -0.25;
    const maxOffsetX = 0.25;
    const minOffsetY = -0.25;
    const maxOffsetY = 0.25;
    final angle = useState(
      decoration.angle != null
          ? decoration.angle! - (decoration.angle! + 0.5).floor()
          : 0.0,
    );
    final offsetX = useState(
      clampDouble(decoration.offsetX, minOffsetX, maxOffsetX),
    );
    final offsetY = useState(
      clampDouble(decoration.offsetY, minOffsetY, maxOffsetY),
    );
    final flipH = useState(decoration.flipH);
    final updated = UserAvatarDecoration(
      id: decoration.id,
      url: decoration.url,
      angle: angle.value,
      offsetX: offsetX.value,
      offsetY: offsetY.value,
      flipH: flipH.value,
    );

    return AlertDialog(
      title: Text(t.misskey.avatarDecorations),
      content: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:
                  i != null
                      ? UserAvatar(
                        account: account,
                        user: i,
                        size: 60.0,
                        decorations:
                            index != null
                                ? [
                                  ...i.avatarDecorations.sublist(0, index),
                                  updated,
                                  ...i.avatarDecorations.sublist(index! + 1),
                                ]
                                : [...i.avatarDecorations, updated],
                      )
                      : ImageWidget(
                        url: decoration.url,
                        width: 60.0,
                        height: 60.0,
                      ),
            ),
            if (data case GetAvatarDecorationsResponse(:final name))
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: KeyValueWidget(label: t.misskey.name, text: name),
              ),
            if (data case GetAvatarDecorationsResponse(:final description))
              if (description.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: KeyValueWidget(
                    label: t.misskey.description,
                    child: Mfm(account: account, text: description),
                  ),
                ),
            if (roleIds.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: KeyValueWidget(
                  label: t.misskey.roles,
                  child: Wrap(
                    spacing: 4.0,
                    runSpacing: 4.0,
                    children:
                        roleIds
                            .mapIndexed(
                              (index, roleId) => RoleChip(
                                account: account,
                                role: UserRole(
                                  id: roleId,
                                  name: roles[index]?.name ?? '',
                                  color: roles[index]?.color
                                      ?.toRadixString(16)
                                      .padLeft(6, '0'),
                                  iconUrl: roles[index]?.iconUrl,
                                  description: roles[index]?.description,
                                  isModerator:
                                      roles[index]?.isModerator ?? false,
                                  isAdministrator:
                                      roles[index]?.isAdministrator ?? false,
                                ),
                                onTap:
                                    roles[index]?.isPublic ?? true
                                        ? () => context.push(
                                          '/$account/roles/$roleId',
                                        )
                                        : null,
                              ),
                            )
                            .toList(),
                  ),
                ),
              ),
            if (!account.isGuest && canUse) ...[
              ListTile(
                title: Text(t.misskey.angle),
                subtitle: Slider(
                  value: angle.value,
                  onChanged: (value) => angle.value = value,
                  min: minAngle,
                  max: maxAngle,
                ),
                trailing: IconButton(
                  onPressed: () => angle.value = 0.0,
                  icon: const Icon(Icons.refresh),
                ),
              ),
              ListTile(
                title: Text('X ${t.misskey.position}'),
                subtitle: Slider(
                  value: offsetX.value,
                  onChanged: (value) => offsetX.value = value,
                  min: minOffsetX,
                  max: maxOffsetX,
                ),
                trailing: IconButton(
                  onPressed: () => offsetX.value = 0.0,
                  icon: const Icon(Icons.refresh),
                ),
              ),
              ListTile(
                title: Text('Y ${t.misskey.position}'),
                subtitle: Slider(
                  value: offsetY.value,
                  onChanged: (value) => offsetY.value = value,
                  min: minOffsetY,
                  max: maxOffsetY,
                ),
                trailing: IconButton(
                  onPressed: () => offsetY.value = 0.0,
                  icon: const Icon(Icons.refresh),
                ),
              ),
              SwitchListTile(
                title: Text(t.misskey.flip),
                value: flipH.value,
                onChanged: (value) => flipH.value = value,
              ),
            ],
          ],
        ),
      ),
      actions:
          !account.isGuest && canUse
              ? [
                ElevatedButton.icon(
                  onPressed: () => context.pop((updated,)),
                  icon: const Icon(Icons.check),
                  label: Text(
                    index == null ? t.misskey.attach : t.misskey.update,
                  ),
                ),
                if (index != null)
                  OutlinedButton.icon(
                    onPressed: () => context.pop((null,)),
                    icon: const Icon(Icons.close),
                    label: Text(t.misskey.detach),
                  ),
              ]
              : null,
      scrollable: true,
    );
  }
}
