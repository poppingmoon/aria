import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../../provider/recently_used_emojis_notifier_provider.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../widget/account_settings_scaffold.dart';
import '../../widget/emoji_picker.dart';
import '../../widget/emoji_sheet.dart';
import '../../widget/emoji_widget.dart';
import '../../widget/pinned_emojis_editor.dart';

class PinnedEmojisEditorPage extends ConsumerWidget {
  const PinnedEmojisEditorPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(accountSettingsNotifierProvider(account));
    final theme = Theme.of(context);

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.emojiPicker)),
      body: ListView(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: PinnedEmojisEditor(account: account, reaction: true),
            ),
          ),
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: PinnedEmojisEditor(account: account),
            ),
          ),
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: _RecentlyUsedEmojisEditor(account: account),
            ),
          ),
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.emoji_symbols),
                title: Text(t.aria.defaultReaction),
                subtitle: settings.defaultReaction != null
                    ? Builder(
                        builder: (context) => EmojiWidget(
                          account: account,
                          emoji: settings.defaultReaction!,
                          style: DefaultTextStyle.of(
                            context,
                          ).style.apply(fontSizeFactor: 2.0),
                        ),
                      )
                    : Text(t.misskey.notSet),
                trailing: settings.defaultReaction != null
                    ? IconButton(
                        onPressed: () => ref
                            .read(
                              accountSettingsNotifierProvider(account).notifier,
                            )
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
                tileColor: theme.colorScheme.surface,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
      selectedDestination: AccountSettingsDestination.emojiPicker,
    );
  }
}

class _RecentlyUsedEmojisEditor extends ConsumerWidget {
  const _RecentlyUsedEmojisEditor({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyUsedEmojis = ref.watch(
      recentlyUsedEmojisNotifierProvider(account),
    );
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(context).style;

    return ExpansionTile(
      leading: const Icon(Icons.history),
      title: Text(t.aria.recentlyUsedEmojis),
      backgroundColor: theme.colorScheme.surface,
      collapsedBackgroundColor: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      children: [
        if (recentlyUsedEmojis.isNotEmpty) ...[
          Card(
            margin: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 4.0,
                runSpacing: 4.0,
                children: recentlyUsedEmojis
                    .mapIndexed(
                      (index, emoji) => EmojiWidget(
                        account: account,
                        emoji: emoji,
                        onTap: () => showModalBottomSheet<void>(
                          context: context,
                          builder: (context) =>
                              EmojiSheet(account: account, emoji: emoji),
                        ),
                        style: style.apply(fontSizeFactor: 2.0),
                        disableTooltip: true,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.refresh),
            title: Text(t.misskey.default_),
            onTap: () async {
              final confirmed = await confirm(
                context,
                message: t.misskey.resetAreYouSure,
              );
              if (confirmed) {
                await ref
                    .read(recentlyUsedEmojisNotifierProvider(account).notifier)
                    .reset();
              }
            },
            iconColor: theme.colorScheme.error,
            textColor: theme.colorScheme.error,
            dense: true,
          ),
        ] else
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(t.misskey.nothing),
          ),
      ],
    );
  }
}
