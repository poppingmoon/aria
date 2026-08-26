import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

Future<T?> showRadioDialog<T>(
  BuildContext context, {
  Widget? title,
  Widget? header,
  required Iterable<T> values,
  T? initialValue,
  required Widget Function(BuildContext context, T value) titleBuilder,
  Widget Function(BuildContext context, T value)? subtitleBuilder,
}) {
  return showDialog<T>(
    context: context,
    builder: (context) => RadioDialog(
      title: title,
      header: header,
      values: values,
      initialValue: initialValue,
      titleBuilder: titleBuilder,
      subtitleBuilder: subtitleBuilder,
    ),
  );
}

class const RadioDialog<T>({
  super.key,
  final Widget? title,
  final Widget? header,
  required final Iterable<T> values,
  final T? initialValue,
  required final Widget Function(BuildContext context, T value) titleBuilder,
  final Widget Function(BuildContext context, T value)? subtitleBuilder,
}) extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      scrollable: true,
      content: RadioGroup(
        groupValue: initialValue,
        onChanged: (value) => context.pop(value),
        child: Column(
          children: [
            if (header case final header?) ...[
              header,
              const SizedBox(height: 8.0),
            ],
            ...values.map(
              (value) => RadioListTile(
                title: titleBuilder(context, value),
                subtitle: subtitleBuilder?.call(context, value),
                value: value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
