import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

Future<T?> showRadioDialog<T>(
  BuildContext context, {
  Widget? title,
  required Iterable<T> values,
  T? initialValue,
  required Widget Function(BuildContext context, T value) itemBuilder,
}) {
  return showDialog<T>(
    context: context,
    builder: (context) => RadioDialog(
      title: title,
      values: values,
      initialValue: initialValue,
      itemBuilder: itemBuilder,
    ),
  );
}

class RadioDialog<T> extends HookWidget {
  const RadioDialog({
    super.key,
    this.title,
    required this.values,
    this.initialValue,
    required this.itemBuilder,
  });

  final Widget? title;
  final Iterable<T> values;
  final T? initialValue;
  final Widget Function(BuildContext context, T value) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      scrollable: true,
      content: Column(
        children: values
            .map(
              (value) => RadioListTile(
                title: itemBuilder(context, value),
                value: value,
                groupValue: initialValue,
                onChanged: (value) => context.pop(value),
              ),
            )
            .toList(),
      ),
    );
  }
}
