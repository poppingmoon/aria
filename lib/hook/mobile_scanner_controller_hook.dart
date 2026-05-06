import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

MobileScannerController useMobileScannerController({List<Object?>? keys}) {
  return use(_MobileScannerControllerHook(keys: keys));
}

class _MobileScannerControllerHook extends Hook<MobileScannerController> {
  const _MobileScannerControllerHook({super.keys});

  @override
  HookState<MobileScannerController, Hook<MobileScannerController>>
  createState() => _MobileScannerControllerHookState();
}

class _MobileScannerControllerHookState
    extends HookState<MobileScannerController, _MobileScannerControllerHook> {
  final controller = MobileScannerController();

  @override
  MobileScannerController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();
}
