import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ConfettiController useConfettiController({
  Duration duration = const Duration(seconds: 30),
  void Function(ParticleStats stats)? particleStatsCallback,
  List<Object?>? keys,
}) {
  return use(
    _ConfettiControllerHook(
      duration: duration,
      particleStatsCallback: particleStatsCallback,
      keys: keys,
    ),
  );
}

class _ConfettiControllerHook extends Hook<ConfettiController> {
  const _ConfettiControllerHook({
    this.duration = const Duration(seconds: 30),
    this.particleStatsCallback,
    super.keys,
  });

  final Duration duration;
  final void Function(ParticleStats stats)? particleStatsCallback;

  @override
  HookState<ConfettiController, Hook<ConfettiController>> createState() =>
      _ConfettiControllerHookState();
}

class _ConfettiControllerHookState
    extends HookState<ConfettiController, _ConfettiControllerHook> {
  late final controller = ConfettiController(
    duration: hook.duration,
    particleStatsCallback: hook.particleStatsCallback,
  );

  @override
  ConfettiController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();
}
