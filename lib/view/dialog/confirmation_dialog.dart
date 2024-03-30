import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings.g.dart';

Future<bool> confirm(
  BuildContext context, {
  Widget? title,
  String? message,
  Widget? content,
  String? okText,
  String? cancelText,
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => ConfirmationDialog(
      title: title,
      message: message,
      content: content,
      okText: okText,
      cancelText: cancelText,
    ),
  );
  return result ?? false;
}

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    this.title,
    this.message,
    this.content,
    this.okText,
    this.cancelText,
  });

  final Widget? title;
  final String? message;
  final Widget? content;
  final String? okText;
  final String? cancelText;

  @override
  Widget build(
    BuildContext context,
  ) {
    return AlertDialog(
      title: title,
      content: content ?? Text(message ?? ''),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(true),
          child: Text(okText ?? t.misskey.ok),
        ),
        OutlinedButton(
          onPressed: () => context.pop(false),
          child: Text(cancelText ?? t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
