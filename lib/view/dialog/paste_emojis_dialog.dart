import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json5/json5.dart';

import '../../constant/shortcuts.dart';
import '../../hook/force_accept_gesture_recognizer_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/endpoints_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../util/get_link_background_color.dart';
import '../../util/launch_url.dart';
import '../widget/url_sheet.dart';
import '../widget/url_widget.dart';
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
    final endpoints = ref.watch(endpointsNotifierProvider(account.host)).value;
    final isThirdPartyRegistrySupported =
        endpoints?.contains('i/registry/scopes-with-domain') ?? true;
    final useEmojiPalette =
        endpoints == null ||
        endpoints.contains('chat/history') ||
        !endpoints.contains('i/read-all-unread-notes');
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
    final controller = useTextEditingController();

    return AlertDialog(
      title: Text(t.aria.paste),
      content: Column(
        children: [
          _PastePinnedEmojisDescription(
            url: useEmojiPalette ? emojiPaletteUrl : registryUrl,
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

class _PastePinnedEmojisDescription extends HookConsumerWidget {
  const _PastePinnedEmojisDescription({required this.url});

  final Uri url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = useMemoized(() => parseDisplayUrl(this.url), [this.url]);
    final controller = useAnimationController(
      duration: kLongPressTimeout - kPressTimeout,
    );
    final animationValue = useAnimation(controller);
    final recognizer = useForceAcceptGestureRecognizer();
    useEffect(() {
      recognizer
        ..onLongPressDown = (_) {
          controller.animateTo(1.0, curve: Curves.fastOutSlowIn);
        }
        ..onLongPressUp = () {
          Feedback.forTap(context);
          launchUrl(ref, this.url);
          controller.animateTo(0.0, curve: Curves.easeOut);
        }
        ..onLongPressCancel = () {
          controller.animateTo(0.0, curve: Curves.easeOut);
        }
        ..onLongPress = () {
          Feedback.forLongPress(context);
          showModalBottomSheet<void>(
            context: context,
            builder: (context) => UrlSheet(url: this.url.toString()),
          );
          controller.animateTo(0.0, curve: Curves.easeOut);
        };
      return;
    });
    final brightness = Theme.brightnessOf(context);
    final colors = ref.watch(misskeyColorsProvider(brightness));
    final style = DefaultTextStyle.of(context).style;

    return Text.rich(
      t.aria.pastePinnedEmojisDescription(
        url: TextSpan(
          children: [
            buildUrlSpan(
              url: url,
              color: colors.link,
              textSpanBuilder: ({text, style}) => TextSpan(
                text: text,
                style: style,
                recognizer: recognizer,
                onEnter: (_) {
                  if (!controller.isAnimating && controller.value < 1.0) {
                    controller.value = 0.25;
                  }
                },
                onExit: (_) {
                  if (!controller.isAnimating && controller.value < 1.0) {
                    controller.value = 0.0;
                  }
                },
              ),
            ),
            WidgetSpan(
              child: InkWell(
                onTapDown: (_) {
                  controller.animateTo(1.0, curve: Curves.fastOutSlowIn);
                },
                onTapUp: (_) {
                  Feedback.forTap(context);
                  launchUrl(ref, this.url);
                  controller.animateTo(0.0, curve: Curves.easeOut);
                },
                onTapCancel: () {
                  controller.animateTo(0.0, curve: Curves.easeOut);
                },
                onLongPress: () {
                  Feedback.forLongPress(context);
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => UrlSheet(url: this.url.toString()),
                  );
                  controller.animateTo(0.0, curve: Curves.easeOut);
                },
                onHover: (value) {
                  if (!controller.isAnimating && controller.value < 1.0) {
                    if (value) {
                      controller.value = 0.25;
                    } else {
                      controller.value = 0.0;
                    }
                  }
                },
                splashFactory: NoSplash.splashFactory,
                overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                mouseCursor: SystemMouseCursors.click,
                child: AbsorbPointer(
                  child: Icon(
                    Icons.open_in_new,
                    color: colors.link,
                    size: style.fontSize,
                  ),
                ),
              ),
            ),
          ],
          style: TextStyle(
            color: colors.link,
            backgroundColor: getLinkBackgroundColor(brightness, animationValue),
          ),
          recognizer: recognizer,
        ),
      ),
    );
  }
}
