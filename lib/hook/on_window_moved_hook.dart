import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:window_manager/window_manager.dart';

void useOnWindowMoved(void Function() onWindowMoved) {
  use(_OnWindowMovedHook(onWindowMoved: onWindowMoved));
}

class const _OnWindowMovedHook({required final void Function() onWindowMoved})
    extends Hook<void> {
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
