import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

class const LikeButton({
  super.key,
  final bool isLiked = false,
  final int likedCount = 0,
  final void Function()? onTap,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0x12ff567d),
        foregroundColor: const Color(0xffff002f),
        disabledForegroundColor: const Color(0x77ff002f),
        iconColor: const Color(0xffff002f),
        disabledIconColor: const Color(0x77ff002f),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(isLiked ? Icons.favorite : Icons.favorite_border),
          if (likedCount > 0) ...[
            const SizedBox(width: 8.0),
            Text(NumberFormat().format(likedCount)),
          ],
        ],
      ),
    );
  }
}
