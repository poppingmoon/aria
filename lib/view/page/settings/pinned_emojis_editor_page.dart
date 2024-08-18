import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../widget/account_settings_scaffold.dart';
import '../../widget/emoji_picker.dart';
import '../../widget/emoji_widget.dart';
import '../../widget/pinned_emojis_editor.dart';

class PinnedEmojisEditorPage extends ConsumerWidget {
  const PinnedEmojisEditorPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(accountSettingsNotifierProvider(account));

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.emojiPicker)),
      body: ListView(
        children: [
          PinnedEmojisEditor(account: account, reaction: true),
          PinnedEmojisEditor(account: account),
          ListTile(
            title: Text(t.aria.defaultReaction),
            subtitle: settings.defaultReaction != null
                ? Builder(
                    builder: (context) => EmojiWidget(
                      account: account,
                      emoji: settings.defaultReaction!,
                      style: DefaultTextStyle.of(context)
                          .style
                          .apply(fontSizeFactor: 2.0),
                    ),
                  )
                : Text(t.misskey.notSet),
            trailing: settings.defaultReaction != null
                ? IconButton(
                    onPressed: () => ref
                        .read(accountSettingsNotifierProvider(account).notifier)
                        .setDefaultReaction(null),
                    icon: const Icon(Icons.close),
                  )
                : const Icon(Icons.navigate_next),
            onTap: () async {
              final emoji = await pickEmoji(
                ref,
                account,
                reaction: true,
                saveHistory: false,
              );
              if (emoji != null) {
                await ref
                    .read(accountSettingsNotifierProvider(account).notifier)
                    .setDefaultReaction(emoji);
              }
            },
          ),
        ],
      ),
      selectedDestination: AccountSettingsDestination.emojiPicker,
    );
  }
}
