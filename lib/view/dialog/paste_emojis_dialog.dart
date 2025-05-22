import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json5/json5.dart';

import '../../constant/shortcuts.dart';
import '../../extension/string_extension.dart';
import '../../hook/tap_gesture_recognizer_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/endpoints_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../util/launch_url.dart';
import 'message_dialog.dart';

const _sampleEmojis = ['👍', '❤️', ':misskey:', ':ai_yay@.:'];

class PasteEmojisDialog extends HookConsumerWidget {
  const PasteEmojisDialog({
    super.key,
    required this.account,
    this.reaction = false,
  });

  final Account account;
  final bool reaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final endpoints = ref.watch(endpointsProvider(account.host)).valueOrNull;
    final isThirdPartyRegistrySupported =
        endpoints?.contains('i/registry/scopes-with-domain') ?? true;
    final useEmojiPalette = endpoints?.contains('chat/history') ?? false;
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final registryUrl = serverUrl.replace(
      pathSegments: [
        'registry',
        'value',
        if (isThirdPartyRegistrySupported) '@' else 'system',
        'client',
        'base',
        if (reaction) 'reactions' else 'pinnedEmojis',
      ],
    );
    final emojiPaletteUrl = serverUrl.replace(
      pathSegments: ['settings', 'emoji-palette'],
    );
    final recognizer = useTapGestureRecognizer();
    final controller = useTextEditingController();
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return AlertDialog(
      title: Text(t.aria.paste),
      content: Column(
        children: [
          Text.rich(
            t.aria.pastePinnedEmojisDescription(
              url: TextSpan(
                text: (useEmojiPalette ? emojiPaletteUrl : registryUrl)
                    .toString()
                    .breakAll,
                style: TextStyle(color: colors.link),
                recognizer: recognizer
                  ..onTap = () => launchUrl(
                    ref,
                    useEmojiPalette ? emojiPaletteUrl : registryUrl,
                  ),
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          Shortcuts(
            shortcuts: disablingTextShortcuts,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: useEmojiPalette
                    ? t.misskey.emojiPalette
                    : '${t.misskey.value} (JSON)',
                hintText: useEmojiPalette
                    ? _sampleEmojis.join(' ')
                    : json5Encode(_sampleEmojis, space: 2),
                enabledBorder: Theme.of(context).inputDecorationTheme.border,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              maxLines: null,
              onTapOutside: (_) => primaryFocus?.unfocus(),
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            final text = controller.text.trim();
            try {
              final emojis = text.startsWith('[')
                  ? json5Decode(text)
                  : text.split(' ');
              if (emojis is List) {
                context.pop(
                  emojis
                      .whereType<String>()
                      .where((emoji) => emoji.isNotEmpty)
                      .toList(),
                );
              } else {
                throw const FormatException();
              }
            } catch (e) {
              showMessageDialog(context, t.aria.invalidListFormat);
            }
          },
          child: Text(t.misskey.add),
        ),
      ],
      scrollable: true,
    );
  }
}
