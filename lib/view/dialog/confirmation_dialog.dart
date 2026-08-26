import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

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

class const ConfirmationDialog({
  super.key,
  final Widget? title,
  final String? message,
  final Widget? content,
  final String? okText,
  final String? cancelText,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AlertDialog(
      icon: title == null ? const Icon(Icons.help_outline, size: 36.0) : null,
      title: title,
      content: content ?? Text(message ?? ''),
      actions: [
        ElevatedButton(
          autofocus: true,
          onPressed: () => context.pop(true),
          child: Text(okText ?? t.misskey.ok),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.surfaceContainerLowest,
          ),
          onPressed: () => context.pop(false),
          child: Text(cancelText ?? t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
