import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    super.key,
    this.isLiked = false,
    this.likedCount = 0,
    this.onTap,
  });

  final bool isLiked;
  final int likedCount;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0x12ff567d),
        foregroundColor: const Color(0xffff002f),
      ),
      onPressed: onTap,
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border),
      label: Text(likedCount > 0 ? NumberFormat().format(likedCount) : ''),
    );
  }
}
