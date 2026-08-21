import 'package:material_ui/material_ui.dart';

class const HardMutedNoteWidget({
  super.key,
  final BorderRadiusGeometry? borderRadius,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (borderRadius case BorderRadius(:final topLeft, :final bottomLeft)
        when topLeft != bottomLeft) {
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
