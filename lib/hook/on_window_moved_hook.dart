import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:window_manager/window_manager.dart';

void useOnWindowMoved(void Function() onWindowMoved) {
  use(_OnWindowMovedHook(onWindowMoved: onWindowMoved));
}

class _OnWindowMovedHook extends Hook<void> {
  const _OnWindowMovedHook({required this.onWindowMoved});

  final void Function() onWindowMoved;

  @override
  __OnWindowMovedStateState createState() => __OnWindowMovedStateState();
}

class __OnWindowMovedStateState extends HookState<void, _OnWindowMovedHook>
    with WindowListener {
  @override
  void initHook() {
    super.initHook();
    windowManager.addListener(this);
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    super.dispose();
    windowManager.removeListener(this);
  }

  @override
  void onWindowMoved() {
    hook.onWindowMoved();
  }
}
