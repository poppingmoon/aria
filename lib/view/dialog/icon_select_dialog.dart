import 'package:flutter/material.dart' hide ImageIcon;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/tab_icon_data.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/tab_icon.dart';
import '../../provider/emoji_url_provider.dart';
import '../widget/emoji_picker.dart';

class IconSelectDialog extends HookConsumerWidget {
  const IconSelectDialog({super.key, required this.account});

  final Account? account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showEmojiPicker = useState(false);
    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text(t.aria.selectIcon)),
          if (account != null) ...[
            IconButton(
              onPressed:
                  showEmojiPicker.value
                      ? () => showEmojiPicker.value = false
                      : null,
              icon: const Icon(Icons.navigate_before),
            ),
            IconButton(
              onPressed:
                  showEmojiPicker.value
                      ? null
                      : () => showEmojiPicker.value = true,
              icon: const Icon(Icons.navigate_next),
            ),
          ],
        ],
      ),
      content: SizedBox(
        width: double.maxFinite,
        child:
            account != null && showEmojiPicker.value
                ? EmojiPicker(
                  account: account!,
                  onTapEmoji: (emoji, _) {
                    if (emoji.startsWith(':')) {
                      final url =
                          ref.read(emojiUrlProvider(account!, emoji)).$2;
                      context.pop(ImageIcon(url: url));
                    } else {
                      context.pop(EmojiIcon(emoji: emoji));
                    }
                  },
                )
                : SingleChildScrollView(
                  child: Wrap(
                    children:
                        tabIconData
                            .map(
                              (icon) => IconButton(
                                onPressed:
                                    () => context.pop(
                                      MaterialIcon(codePoint: icon.codePoint),
                                    ),
                                icon: Icon(icon),
                              ),
                            )
                            .toList(),
                  ),
                ),
      ),
    );
  }
}
