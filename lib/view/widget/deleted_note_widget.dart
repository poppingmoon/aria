import 'dart:math';

import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';

class DeletedNoteWidget extends StatelessWidget {
  const DeletedNoteWidget({
    super.key,
    this.borderRadius = const BorderRadius.all(Radius.circular(16.0)),
  });

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Colors.transparent,
            Colors.transparent,
            Color.fromRGBO(158, 158, 158, 0.1),
            Color.fromRGBO(158, 158, 158, 0.1),
          ],
          stops: [0.0, 0.7, 0.7, 1.0],
          tileMode: TileMode.repeated,
          transform: GradientRotation(-pi / 4),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(t.misskey.deletedNote),
        ),
      ),
    );
  }
}
