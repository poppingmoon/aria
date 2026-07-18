import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../util/force_accept_gesture_recognizer.dart';

ForceAcceptGestureRecognizer useForceAcceptGestureRecognizer({
  List<Object?>? keys,
}) {
  return use(_ForceAcceptGestureRecognizerHook(keys: keys));
}

class _ForceAcceptGestureRecognizerHook
    extends Hook<ForceAcceptGestureRecognizer> {
  const _ForceAcceptGestureRecognizerHook({super.keys});

  @override
  HookState<ForceAcceptGestureRecognizer, Hook<ForceAcceptGestureRecognizer>>
  createState() => _ForceAcceptGestureRecognizerHookState();
}

class _ForceAcceptGestureRecognizerHookState
    extends
        HookState<
          ForceAcceptGestureRecognizer,
          _ForceAcceptGestureRecognizerHook
        > {
  final recognizer = ForceAcceptGestureRecognizer();

  @override
  ForceAcceptGestureRecognizer build(BuildContext context) => recognizer;

  @override
  void dispose() => recognizer.dispose();
}
