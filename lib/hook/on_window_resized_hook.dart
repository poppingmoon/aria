import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:window_manager/window_manager.dart';

void useOnWindowResized(void Function() onWindowResized) {
  use(_OnWindowResizedHook(onWindowResized: onWindowResized));
}

class _OnWindowResizedHook extends Hook<void> {
  const _OnWindowResizedHook({required this.onWindowResized});

  final void Function() onWindowResized;

  @override
  __OnWindowResizedStateState createState() => __OnWindowResizedStateState();
}

class __OnWindowResizedStateState extends HookState<void, _OnWindowResizedHook>
    with WindowListener {
  @override
  void initHook() {
    super.initHook();
    windowManager.addListener(this);
  }

  @override
  void build(BuildContext context) {
    return;
  }

  @override
  void dispose() {
    super.dispose();
    windowManager.removeListener(this);
  }

  @override
  void onWindowResized() {
    hook.onWindowResized();
  }
}
