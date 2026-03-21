import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../model/account.dart';
import 'emoji_widget.dart';

class ReactionEffect extends HookWidget {
  const ReactionEffect({
    super.key,
    required this.account,
    required this.emoji,
    this.emojis = const {},
    this.style,
  });

  final Account account;
  final String emoji;
  final Map<String, String> emojis;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(seconds: 2),
    );
    useEffect(() {
      controller.forward();
      return;
    }, []);
    final offset = useAnimation(
      Tween(begin: const Offset(0.0, -30.0), end: const Offset(0.0, -50.0))
          .chain(
            CurveTween(
              curve: const Interval(0.0, 0.5, curve: Cubic(0.0, 0.5, 0.0, 1.0)),
            ),
          )
          .animate(controller),
    );
    final angle = useAnimation(
      Tween(
            begin: 0.0,
            end: useMemoized(() => (Random().nextDouble() - 0.5) * pi, []),
          )
          .chain(
            CurveTween(
              curve: const Interval(0.0, 0.5, curve: Cubic(0.0, 0.5, 0.0, 1.0)),
            ),
          )
          .animate(controller),
    );
    final opacity = useAnimation(
      CurveTween(
        curve: const Interval(0.5, 1.0, curve: Cubic(0.0, 0.5, 0.5, 1.0)),
      ).animate(ReverseAnimation(controller)),
    );

    return Transform.translate(
      offset: offset,
      child: Transform.rotate(
        angle: angle,
        child: Opacity(
          opacity: opacity,
          child: EmojiWidget(
            account: account,
            emoji: emoji,
            emojis: emojis,
            style: style,
          ),
        ),
      ),
    );
  }
}
