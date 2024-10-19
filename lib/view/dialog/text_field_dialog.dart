import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:searchfield/searchfield.dart';

import '../../constant/shortcuts.dart';
import '../../extension/search_input_decoration_extension.dart';
import '../../i18n/strings.g.dart';

Future<String?> showTextFieldDialog(
  BuildContext context, {
  Widget? title,
  String? initialText,
  InputDecoration? decoration,
  TextStyle? style,
  int? minLines,
  int? maxLines = 1,
  int? maxLength,
  List<String>? autocompleteOptions,
}) async {
  return showDialog(
    context: context,
    builder: (context) => TextFieldDialog(
      title: title,
      initialText: initialText,
      decoration: decoration,
      style: style,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      autocompleteOptions: autocompleteOptions,
    ),
  );
}

class TextFieldDialog extends HookWidget {
  const TextFieldDialog({
    super.key,
    this.title,
    this.initialText,
    this.decoration,
    this.style,
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.autocompleteOptions,
  });

  final Widget? title;
  final String? initialText;
  final InputDecoration? decoration;
  final TextStyle? style;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final List<String>? autocompleteOptions;

  Widget _buildField(BuildContext context, TextEditingController controller) {
    final decoration = (this.decoration ?? const InputDecoration()).copyWith(
      suffixIcon: maxLines == 1
          ? IconButton(
              onPressed: () => controller.clear(),
              icon: const Icon(Icons.close),
            )
          : null,
      enabledBorder: Theme.of(context).inputDecorationTheme.border,
    );

    if (autocompleteOptions case final options? when options.isNotEmpty) {
      return SearchField(
        controller: controller,
        suggestions: options
            .map((option) => SearchFieldListItem<String>(option))
            .toList(),
        searchInputDecoration: SearchInputDecoration(
          searchStyle: style,
          cursorColor: Theme.of(context).colorScheme.primary,
        ).applyInputDecoration(decoration),
        maxLength: maxLength,
        onSubmit: (value) => context.pop(value),
        autofocus: true,
        textInputAction: maxLines == 1 ? TextInputAction.done : null,
      );
    } else {
      return TextField(
        controller: controller,
        decoration: decoration,
        style: style,
        onSubmitted: (value) => context.pop(value),
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        autofocus: true,
        textInputAction: maxLines == 1 ? TextInputAction.done : null,
      );
    }
  }

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
        content: _buildField(context, controller),
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
