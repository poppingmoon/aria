import 'dart:ui';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

class const Ruby({
  super.key,
  required final TextStyle style,
  required final String ruby,
  required final Widget child,
}) extends HookWidget {
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
