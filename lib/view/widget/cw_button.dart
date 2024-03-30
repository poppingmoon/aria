import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class CwButton extends StatelessWidget {
  const CwButton({
    super.key,
    required this.note,
    required this.onPressed,
    required this.isOpen,
  });

  final Note note;
  final void Function(bool value)? onPressed;
  final bool isOpen;

  @override
  Widget build(BuildContext context) {
    final style = DefaultTextStyle.of(context).style;

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        textStyle: style,
        minimumSize: Size(double.infinity, style.fontSize! * 2.5),
      ),
      onPressed: onPressed != null ? () => onPressed?.call(!isOpen) : null,
      child: Text.rich(
        TextSpan(
          text: isOpen ? t.misskey.cw_.hide : t.misskey.cw_.show,
          children: [
            if (!isOpen)
              TextSpan(
                style: const TextStyle(fontWeight: FontWeight.normal),
                children: [
                  const TextSpan(text: ' ('),
                  TextSpan(
                    text: [
                      if (note case Note(:final text?))
                        t.misskey.cw_.chars(count: text.length),
                      if (note.renote != null) t.misskey.quote,
                      if (note.files.isNotEmpty)
                        t.misskey.cw_.files(count: note.files.length),
                      if (note.poll != null) t.misskey.poll,
                    ].join(' / '),
                  ),
                  const TextSpan(text: ')'),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
