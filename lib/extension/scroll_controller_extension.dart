import 'package:material_ui/material_ui.dart';

extension ScrollControllerExtension on ScrollController {
  Future<void> scrollToTop({
    Duration duration = const Duration(milliseconds: 300),
  }) async {
    if (!hasClients) return;
    final extentBefore = position.extentBefore;
    if (extentBefore == 0.0) return;
    await animateTo(
      extentBefore < 10000.0 ? position.minScrollExtent : 1000.0,
      duration: duration,
      curve: Curves.easeOut,
    );
    jumpTo(position.minScrollExtent);
  }
}
