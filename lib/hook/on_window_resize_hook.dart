import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:window_manager/window_manager.dart';

void useOnWindowResize(void Function() onWindowResize) {
  use(_OnWindowResizeHook(onWindowResize: onWindowResize));
}

class _OnWindowResizeHook extends Hook<void> {
  const _OnWindowResizeHook({required this.onWindowResize});

  final void Function() onWindowResize;

  @override
  __OnWindowResizeStateState createState() => __OnWindowResizeStateState();
}

class __OnWindowResizeStateState extends HookState<void, _OnWindowResizeHook>
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
  void onWindowResize() {
    hook.onWindowResize();
  }
}
