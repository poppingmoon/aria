import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import 'acct_widget.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class UserPreview extends StatelessWidget {
  const UserPreview({
    super.key,
    required this.account,
    required this.user,
    this.trailing,
    this.avatarSize = 32.0,
    this.onTap,
    this.onLongPress,
  });

  final Account account;
  final User user;
  final Widget? trailing;
  final double avatarSize;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserAvatar(account: account, user: user, size: avatarSize),
      title: UsernameWidget(account: account, user: user),
      subtitle: AcctWidget(account: account, user: user),
      trailing: trailing,
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}
