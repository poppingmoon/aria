import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../provider/misskey_colors_provider.dart';

class CwButton extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final style = DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.9);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: colors.fg,
        backgroundColor: colors.buttonBg,
        textStyle: style.copyWith(fontWeight: FontWeight.bold),
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
        minimumSize: const Size(double.infinity, 0.0),
        side: BorderSide.none,
        visualDensity: VisualDensity.standard,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                      if (note.renoteId != null) t.misskey.quote,
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
