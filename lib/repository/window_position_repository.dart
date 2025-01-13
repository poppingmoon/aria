import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

class WindowPositionRepository {
  const WindowPositionRepository(this.prefs);

  final SharedPreferences prefs;

  static const _positionXKey = 'windowPositionX';
  static const _positionYKey = 'windowPositionY';

  Future<void> setPosition(Offset offset) async {
    await prefs.setDouble(_positionXKey, offset.dx);
    await prefs.setDouble(_positionYKey, offset.dy);
  }

  Offset? getPosition() {
    final dx = prefs.getDouble(_positionXKey);
    final dy = prefs.getDouble(_positionYKey);
    if (dx != null && dy != null) {
      return Offset(dx, dy);
    } else {
      return null;
    }
  }
}
