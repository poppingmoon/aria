import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/user_extension.dart';
import '../../model/account.dart';
import 'mfm.dart';

List<InlineSpan> buildUsername(
  WidgetRef ref, {
  required Account account,
  required User user,
  TextStyle? style,
}) {
  return buildMfm(
    ref,
    account: account,
    text: user.nameOrUsername,
    simple: true,
    style: style,
    emojis: user.emojis,
  );
}

class UsernameWidget extends StatelessWidget {
  const UsernameWidget({
    super.key,
    required this.account,
    required this.user,
    this.style,
    this.onTap,
    this.onLongPress,
  });

  final Account account;
  final User user;
  final TextStyle? style;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Mfm(
        account: account,
        text: user.nameOrUsername,
        simple: true,
        style: style,
        emojis: user.emojis,
      ),
    );
  }
}
