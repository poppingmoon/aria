import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings.g.dart';

Future<void> showMessageDialog(
  BuildContext context,
  String message, {
  Widget icon = const Icon(Icons.error_outline),
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) => MessageDialog(message: message, icon: icon),
  );
}

class MessageDialog extends StatelessWidget {
  const MessageDialog({super.key, required this.message, required this.icon});

  final String message;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: IconTheme.merge(data: const IconThemeData(size: 36.0), child: icon),
      content: Text(message),
      actions: [
        ElevatedButton(
          autofocus: true,
          onPressed: () => context.pop(),
          child: Text(t.misskey.gotIt),
        ),
      ],
    );
  }
}
