import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import 'acct_widget.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class const UserPreview({
  super.key,
  required final Account account,
  required final User user,
  final Widget? trailing,
  final double avatarSize = 32.0,
  final void Function()? onTap,
  final void Function()? onLongPress,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserAvatar(
        account: account,
        user: user,
        size: avatarSize,
        showOnlineIndicator: true,
      ),
      title: Align(
        alignment: AlignmentDirectional.centerStart,
        child: UsernameWidget(account: account, user: user),
      ),
      subtitle: Align(
        alignment: AlignmentDirectional.centerStart,
        child: AcctWidget(account: account, user: user),
      ),
      trailing: trailing,
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}
