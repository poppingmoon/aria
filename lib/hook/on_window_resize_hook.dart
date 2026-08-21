import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:window_manager/window_manager.dart';

void useOnWindowResize(void Function() onWindowResize) {
  use(_OnWindowResizeHook(onWindowResize: onWindowResize));
}

class const _OnWindowResizeHook({required final void Function() onWindowResize})
    extends Hook<void> {
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
