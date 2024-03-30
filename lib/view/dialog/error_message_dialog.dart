import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings.g.dart';
import '../widget/error_message.dart';

class ErrorMessageDialog extends StatelessWidget {
  const ErrorMessageDialog({
    super.key,
    this.error,
    this.stackTrace,
  });

  final Object? error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(t.misskey.error),
      scrollable: true,
      content: ErrorMessage(
        error: error,
        stackTrace: stackTrace,
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(t.misskey.gotIt),
        ),
      ],
    );
  }
}
