import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../model/account.dart';
import '../../util/safe_parse_color.dart';
import 'image_widget.dart';

class RoleChip extends ConsumerWidget {
  const RoleChip({
    super.key,
    required this.account,
    required this.role,
    this.onTap,
  });

  final Account account;
  final UserRole role;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = DefaultTextStyle.of(context).style.lineHeight;

    return Tooltip(
      message: role.description ?? '',
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(height),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: safeParseColor(role.color) ??
                  Theme.of(context).colorScheme.outlineVariant,
            ),
            borderRadius: BorderRadius.circular(height),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 8.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (role case UserRole(:final iconUrl))
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 4.0),
                  child: ImageWidget(
                    url: iconUrl.toString(),
                    height: height,
                  ),
                ),
              Text(role.name),
            ],
          ),
        ),
      ),
    );
  }
}
