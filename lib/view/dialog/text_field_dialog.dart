import 'package:collection/collection.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';

Future<String?> showTextFieldDialog(
  BuildContext context, {
  Widget? title,
  String? initialText,
  InputDecoration? decoration,
  int? minLines,
  int? maxLines = 1,
  int? maxLength,
  List<String>? autocompleteOptions,
}) {
  return showDialog(
    context: context,
    builder: (context) => TextFieldDialog(
      title: title,
      initialText: initialText,
      decoration: decoration,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      autocompleteOptions: autocompleteOptions,
    ),
  );
}

class const TextFieldDialog({
  super.key,
  final Widget? title,
  final String? initialText,
  final InputDecoration? decoration,
  final TextStyle? style,
  final int? minLines,
  final int? maxLines = 1,
  final int? maxLength,
  final List<String>? autocompleteOptions,
}) extends HookWidget {
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
      return _Autocomplete(
        textEditingController: controller,
        options: options,
        decoration: decoration,
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
        onTapOutside: (_) => primaryFocus?.unfocus(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialText);
    final theme = Theme.of(context);

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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: theme.colorScheme.primary,
              backgroundColor: theme.colorScheme.surfaceContainerLowest,
            ),
            onPressed: () => context.pop(),
            child: Text(t.misskey.cancel),
          ),
        ],
      ),
    );
  }
}

class const _Autocomplete({
  required final TextEditingController textEditingController,
  required final List<String> options,
  final InputDecoration? decoration,
}) extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();

    return RawAutocomplete(
      textEditingController: textEditingController,
      focusNode: focusNode,
      optionsBuilder: (textEditingValue) {
        final query = textEditingValue.text;
        if (query.isEmpty) {
          return options;
        }
        final groups = options
            .where((option) => option.contains(query))
            .groupListsBy((option) => option.startsWith(query));
        return [...?groups[true], ...?groups[false]];
      },
      fieldViewBuilder: (context, textEditingController, focusNode, _) =>
          TextField(
            controller: textEditingController,
            focusNode: focusNode,
            decoration: decoration,
            autofocus: true,
            onSubmitted: (value) => context.pop(value),
            textInputAction: TextInputAction.done,
            onTapOutside: (_) => focusNode.unfocus(),
          ),
      optionsViewBuilder: (context, onSelected, options) => Align(
        alignment: AlignmentDirectional.topStart,
        child: Material(
          elevation: 4.0,
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(24.0),
          ),
          clipBehavior: Clip.hardEdge,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300.0),
            child: ListView(
              shrinkWrap: true,
              children: options
                  .map(
                    (option) => ListTile(
                      title: Text(option),
                      onTap: () => onSelected(option),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
