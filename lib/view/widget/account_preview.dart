import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class const AccountPreview({
  super.key,
  required final Account account,
  final Widget? trailing,
  final double avatarSize = 32.0,
  final void Function()? onTap,
}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;

    return ListTile(
      leading: i != null
          ? UserAvatar(account: account, user: i, size: avatarSize)
          : Icon(Icons.person, size: avatarSize),
      title: i != null
          ? UsernameWidget(account: account, user: i)
          : Text(account.username ?? t.aria.guest),
      subtitle: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Text(account.toString(), textDirection: TextDirection.ltr),
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
