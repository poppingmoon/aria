import 'package:confetti/confetti.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

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

class const _ConfettiControllerHook({
  final Duration duration = const Duration(seconds: 30),
  final void Function(ParticleStats stats)? particleStatsCallback,
  super.keys,
}) extends Hook<ConfettiController> {
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
