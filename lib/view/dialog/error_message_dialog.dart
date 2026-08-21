import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';
import '../widget/error_message.dart';

Future<void> showErrorMessageDialog(
  BuildContext context, {
  Object? error,
  StackTrace? stackTrace,
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) =>
        ErrorMessageDialog(error: error, stackTrace: stackTrace),
  );
}

class const ErrorMessageDialog({
  super.key,
  final Object? error,
  final StackTrace? stackTrace,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(t.misskey.error),
      scrollable: true,
      content: ErrorMessage(error: error, stackTrace: stackTrace),
      actions: [
        TextButton(
          autofocus: true,
          onPressed: () => context.pop(),
          child: Text(t.misskey.gotIt),
        ),
      ],
    );
  }
}
