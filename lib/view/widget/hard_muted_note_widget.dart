import 'package:flutter/material.dart';

class HardMutedNoteWidget extends StatelessWidget {
  const HardMutedNoteWidget({super.key, this.borderRadius});

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    if (borderRadius case BorderRadius(
      :final topLeft,
      :final bottomLeft,
    ) when topLeft != bottomLeft) {
      return Material(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: borderRadius,
        child: SizedBox(height: topLeft.y + bottomLeft.y),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
