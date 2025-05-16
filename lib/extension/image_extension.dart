import 'dart:ui';

extension ImageExtension on Image {
  Size get size => Size(width.toDouble(), height.toDouble());
}
