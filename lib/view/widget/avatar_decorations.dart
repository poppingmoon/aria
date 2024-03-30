import 'dart:math';

import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import 'image_widget.dart';

class AvatarDecorations extends StatelessWidget {
  const AvatarDecorations({
    super.key,
    required this.decorations,
    required this.size,
  });

  final List<UserAvatarDecoration> decorations;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: decorations
            .map(
              (decoration) => Transform.scale(
                scaleX: 2,
                scaleY: 2,
                child: Transform.translate(
                  offset: Offset(
                    size * decoration.offsetX,
                    size * decoration.offsetY,
                  ),
                  child: Transform.rotate(
                    angle: (decoration.angle ?? 0) * 2 * pi,
                    child: Transform.flip(
                      flipX: decoration.flipH,
                      child: SizedBox(
                        child: ImageWidget(
                          url: decoration.url,
                          height: size,
                          width: size,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
