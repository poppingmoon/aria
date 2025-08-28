import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/misskey_colors_provider.dart';
import '../widget/mfm.dart';

class AiScriptDialog extends ConsumerWidget {
  const AiScriptDialog({
    super.key,
    required this.account,
    this.title,
    this.text,
    this.type,
    this.showCancelButton = false,
  });

  final Account account;
  final String? title;
  final String? text;
  final String? type;
  final bool showCancelButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(context).style;
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return AlertDialog(
      icon: IconTheme(
        data: const IconThemeData(size: 32.0),
        child: switch (type) {
          'success' => Icon(Icons.check, color: colors.success),
          'error' => Icon(Icons.cancel_outlined, color: colors.error),
          'warning' => Icon(Icons.warning_amber_rounded, color: colors.warn),
          'info' => const Icon(Icons.info_outline, color: Color(0xff55c4dd)),
          'question' => const Icon(Icons.help_outline),
          'waiting' => const Center(
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          _ => const Icon(Icons.info_outline, color: Color(0xff55c4dd)),
        },
      ),
      iconPadding: const EdgeInsets.only(
        top: 32.0,
        left: 32.0,
        bottom: 4.0,
        right: 32.0,
      ),
      title: title != null
          ? IntrinsicWidth(
              child: Mfm(
                account: account,
                text: title,
                textAlign: TextAlign.center,
              ),
            )
          : null,
      titlePadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 32.0),
      titleTextStyle: style
          .apply(fontSizeFactor: 1.1)
          .copyWith(fontWeight: FontWeight.bold),
      content: IntrinsicWidth(
        child: Mfm(account: account, text: text, textAlign: TextAlign.center),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 32.0,
      ),
      actions: showCancelButton
          ? [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100.0, 40.0),
                  padding: const EdgeInsets.all(8.0),
                ),
                onPressed: () => context.pop(true),
                child: Text(t.misskey.ok),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: theme.colorScheme.primary,
                  backgroundColor: theme.colorScheme.surfaceContainerLowest,
                  minimumSize: const Size(100.0, 40.0),
                  padding: const EdgeInsets.all(8.0),
                ),
                onPressed: () => context.pop(false),
                child: Text(t.misskey.cancel),
              ),
            ]
          : [
              ElevatedButton(
                onPressed: () => context.pop(),
                child: Text(t.misskey.gotIt),
              ),
            ],
      actionsPadding: const EdgeInsets.only(
        top: 12.0,
        left: 32.0,
        bottom: 32.0,
        right: 32.0,
      ),
      actionsAlignment: MainAxisAlignment.center,
      scrollable: true,
    );
  }
}
