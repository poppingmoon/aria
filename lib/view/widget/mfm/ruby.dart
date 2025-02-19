import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Ruby extends HookWidget {
  const Ruby({
    super.key,
    required this.style,
    required this.ruby,
    required this.child,
  });

  final TextStyle style;
  final String ruby;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final childKey = useMemoized(() => GlobalKey(), []);
    final width = useState(0.0);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final renderObject = childKey.currentContext?.findRenderObject();
        if (renderObject is RenderBox) {
          width.value = renderObject.size.width;
        }
      });
      return;
    }, [child]);
    final rubyWidth = useMemoized(() {
      final painter = TextPainter(
        text: TextSpan(text: ruby, style: style),
        textDirection: TextDirection.ltr,
      );
      painter.layout();
      return painter.width;
    }, [style, ruby]);
    final rubyStyle = style.copyWith(
      letterSpacing:
          clampDouble(width.value - rubyWidth, 0, width.value) / ruby.length,
    );

    return Column(
      children: [
        Text(ruby, style: rubyStyle),
        Container(key: childKey, child: child),
      ],
    );
  }
}
