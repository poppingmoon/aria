import 'dart:ui';

Color getLinkBackgroundColor(Brightness brightness, double animationValue) {
  return switch (brightness) {
    Brightness.light => Color.fromRGBO(0xC3, 0xC3, 0xC3, 0.64 * animationValue),
    Brightness.dark => Color.fromRGBO(0xCC, 0xCC, 0xCC, 0.44 * animationValue),
  };
}
