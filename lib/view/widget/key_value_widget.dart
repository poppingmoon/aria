import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../util/copy_text.dart';

class KeyValueWidget extends ConsumerWidget {
  const KeyValueWidget({super.key, required this.label, this.text, this.child});

  final String label;
  final String? text;
  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = DefaultTextStyle.of(context).style;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: style.apply(
            color: style.color?.withValues(alpha: 0.75),
            fontSizeFactor: 0.85,
          ),
        ),
        SizedBox(width: double.infinity, height: style.lineHeight * 0.25),
        child ??
            InkWell(
              onLongPress: text != null
                  ? () => copyToClipboard(context, text!)
                  : null,
              child: Text(
                text ?? '(${t.misskey.none})',
                style: text == null
                    ? style.apply(color: style.color?.withValues(alpha: 0.5))
                    : null,
              ),
            ),
      ],
    );
  }
}
