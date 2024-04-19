import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';

Future<String?> showTextFieldDialog(
  BuildContext context, {
  Widget? title,
  String? initialText,
  InputDecoration? decoration,
  int? maxLines = 1,
}) async {
  return showDialog(
    context: context,
    builder: (context) => TextFieldDialog(
      title: title,
      initialText: initialText,
      decoration: decoration,
      maxLines: maxLines,
    ),
  );
}

class TextFieldDialog extends HookWidget {
  const TextFieldDialog({
    super.key,
    this.title,
    this.initialText,
    this.decoration,
    this.maxLines = 1,
  });

  final Widget? title;
  final String? initialText;
  final InputDecoration? decoration;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialText);
    return Shortcuts(
      shortcuts: {
        ...disablingTextShortcuts,
        submitActivator: VoidCallbackIntent(() => context.pop(controller.text)),
      },
      child: AlertDialog(
        title: title,
        content: TextField(
          controller: controller,
          decoration: decoration ??
              InputDecoration(
                suffixIcon: maxLines == 1
                    ? IconButton(
                        onPressed: () => controller.clear(),
                        icon: const Icon(Icons.close),
                      )
                    : null,
              ),
          onSubmitted: (value) => context.pop(value),
          maxLines: maxLines,
          autofocus: true,
          textInputAction: maxLines == 1 ? TextInputAction.done : null,
        ),
        actions: [
          ElevatedButton(
            onPressed: () => context.pop(controller.text),
            child: Text(t.misskey.ok),
          ),
          OutlinedButton(
            onPressed: () => context.pop(),
            child: Text(t.misskey.cancel),
          ),
        ],
      ),
    );
  }
}
