import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ConfettiController useConfettiController({
  Duration duration = const Duration(seconds: 30),
  List<Object?>? keys,
}) {
  return use(_ConfettiControllerHook(duration: duration, keys: keys));
}

class _ConfettiControllerHook extends Hook<ConfettiController> {
  const _ConfettiControllerHook({
    this.duration = const Duration(seconds: 30),
    super.keys,
  });

  final Duration duration;

  @override
  HookState<ConfettiController, Hook<ConfettiController>> createState() =>
      _ConfettiControllerHookState();
}

class _ConfettiControllerHookState
    extends HookState<ConfettiController, _ConfettiControllerHook> {
  late final controller = ConfettiController(duration: hook.duration);

  @override
  ConfettiController build(BuildContext context) => controller..play();

  @override
  void dispose() => controller.dispose();
}
