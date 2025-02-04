import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../util/punycode.dart';

class AcctWidget extends StatelessWidget {
  const AcctWidget({
    super.key,
    required this.account,
    required this.user,
    this.showLocalHost = false,
  });

  final Account account;
  final User user;
  final bool showLocalHost;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '@${user.username}'),
          if (user.host != null || showLocalHost)
            TextSpan(
              text: '@${toUnicode(user.host ?? account.host)}',
              style: TextStyle(
                color: DefaultTextStyle.of(context)
                    .style
                    .color
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
