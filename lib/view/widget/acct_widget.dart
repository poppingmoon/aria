import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../util/punycode.dart';

class const AcctWidget({
  super.key,
  required final Account account,
  required final User user,
  final bool showLocalHost = false,
}) extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final host = useMemoized(
      () => user.host != null || showLocalHost
          ? toUnicode(user.host ?? account.host)
          : null,
      [user.host, account.host, showLocalHost],
    );

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '@${user.username}'),
          if (user.host != null || showLocalHost)
            TextSpan(
              text: '@$host',
              style: TextStyle(
                color: DefaultTextStyle.of(context).style.color
                    ?.withValues(alpha: 0.5),
              ),
            ),
        ],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textDirection: TextDirection.ltr,
    );
  }
}
