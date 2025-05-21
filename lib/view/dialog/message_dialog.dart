import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings.g.dart';

Future<void> showMessageDialog(BuildContext context, String message) async {
  await showDialog<void>(
    context: context,
    builder: (context) => MessageDialog(message: message),
  );
}

class MessageDialog extends StatelessWidget {
  const MessageDialog({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(Icons.error_outline, size: 36.0),
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
