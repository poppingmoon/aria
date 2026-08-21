import 'package:flutter/gestures.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

TapGestureRecognizer useTapGestureRecognizer({List<Object?>? keys}) {
  return use(_TapGestureRecognizerHook(keys: keys));
}

class const _TapGestureRecognizerHook({super.keys})
    extends Hook<TapGestureRecognizer> {
  @override
  HookState<TapGestureRecognizer, Hook<TapGestureRecognizer>> createState() =>
      _TapGestureRecognizerHookState();
}

class _TapGestureRecognizerHookState
    extends HookState<TapGestureRecognizer, _TapGestureRecognizerHook> {
  final recognizer = TapGestureRecognizer();

  @override
  TapGestureRecognizer build(BuildContext context) => recognizer;

  @override
  void dispose() => recognizer.dispose();
}
