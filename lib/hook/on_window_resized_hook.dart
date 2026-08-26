import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:window_manager/window_manager.dart';

void useOnWindowResized(void Function() onWindowResized) {
  use(_OnWindowResizedHook(onWindowResized: onWindowResized));
}

class const _OnWindowResizedHook({
  required final void Function() onWindowResized,
}) extends Hook<void> {
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
