import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings.g.dart';
import '../widget/misskey_servers.dart';

class MisskeyServerListDialog extends StatelessWidget {
  const MisskeyServerListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(t.aria.findServer),
      content: SizedBox(
        width: double.maxFinite,
        child: Theme(
          data: Theme.of(context).copyWith(
            inputDecorationTheme: Theme.of(
              context,
            ).inputDecorationTheme.copyWith(
              enabledBorder: Theme.of(context).inputDecorationTheme.border,
            ),
          ),
          child: MisskeyServers(onTapServer: (item) => context.pop(item.url)),
        ),
      ),
    );
  }
}
