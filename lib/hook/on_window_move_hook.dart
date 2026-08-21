import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:window_manager/window_manager.dart';

void useOnWindowMove(void Function() onWindowMove) {
  use(_OnWindowMoveHook(onWindowMove: onWindowMove));
}

class const _OnWindowMoveHook({required final void Function() onWindowMove})
    extends Hook<void> {
  @override
  __OnWindowMoveStateState createState() => __OnWindowMoveStateState();
}

class __OnWindowMoveStateState extends HookState<void, _OnWindowMoveHook>
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
  void onWindowMove() {
    hook.onWindowMove();
  }
}
