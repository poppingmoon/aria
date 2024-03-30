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
        child: MisskeyServers(
          onTapServer: (item) => context.pop(item.url),
        ),
      ),
    );
  }
}
