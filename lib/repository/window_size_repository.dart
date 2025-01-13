import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

class WindowSizeRepository {
  const WindowSizeRepository(this.prefs);

  final SharedPreferences prefs;

  static const _widthKey = 'windowWidth';
  static const _heightKey = 'windowHeight';

  Future<void> setSize(Size size) async {
    await prefs.setDouble(_widthKey, size.width);
    await prefs.setDouble(_heightKey, size.height);
  }

  Size? getSize() {
    final width = prefs.getDouble(_widthKey);
    final height = prefs.getDouble(_heightKey);
    if (width != null && height != null) {
      return Size(width, height);
    } else {
      return null;
    }
  }
}
