import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

TapGestureRecognizer useTapGestureRecognizer({List<Object?>? keys}) {
  return use(_TapGestureRecognizerHook(keys: keys));
}

class _TapGestureRecognizerHook extends Hook<TapGestureRecognizer> {
  const _TapGestureRecognizerHook({super.keys});

  @override
  HookState<TapGestureRecognizer, Hook<TapGestureRecognizer>> createState() =>
      _TapGestureRecognizerHookState();
}

class _TapGestureRecognizerHookState
    extends HookState<TapGestureRecognizer, _TapGestureRecognizerHook> {
  final player = TapGestureRecognizer();

  @override
  TapGestureRecognizer build(BuildContext context) => player;

  @override
  void dispose() => player.dispose();
}
