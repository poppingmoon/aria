import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json5/json5.dart';
import 'package:reorderables/reorderables.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/endpoints_provider.dart';
import '../../provider/pinned_emojis_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/paste_emojis_dialog.dart';
import 'emoji_picker.dart';
import 'emoji_widget.dart';

class PinnedEmojisEditor extends HookConsumerWidget {
  const PinnedEmojisEditor({
    super.key,
    required this.account,
    this.reaction = false,
  });

  final Account account;
  final bool reaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pinnedEmojis = ref.watch(
      pinnedEmojisNotifierProvider(account, reaction: reaction),
    );
    final endpoints = ref.watch(endpointsProvider(account.host)).valueOrNull;
    final useEmojiPalette =
        endpoints == null ||
        endpoints.contains('chat/history') ||
        !endpoints.contains('i/read-all-unread-notes');
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(context).style;

    return ExpansionTile(
      leading: Icon(reaction ? Icons.push_pin : Icons.push_pin_outlined),
      title: Text(
        '${t.misskey.pinned} (${reaction ? t.misskey.reaction : t.misskey.general})',
      ),
      subtitle: Text(
        reaction
            ? t.misskey.pinnedEmojisForReactionSettingDescription
            : t.misskey.pinnedEmojisSettingDescription,
      ),
      initiallyExpanded: true,
      backgroundColor: theme.colorScheme.surface,
      collapsedBackgroundColor: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      children: [
        if (pinnedEmojis.isNotEmpty)
          Card(
            margin: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: ReorderableWrap(
                spacing: 4.0,
                runSpacing: 4.0,
                onReorder: (oldIndex, newIndex) => ref
                    .read(
                      pinnedEmojisNotifierProvider(
                        account,
                        reaction: reaction,
                      ).notifier,
                    )
                    .reorder(oldIndex, newIndex),
                children: pinnedEmojis
                    .mapIndexed(
                      (index, name) => EmojiWidget(
                        account: account,
                        emoji: name,
                        onTap: () => ref
                            .read(
                              pinnedEmojisNotifierProvider(
                                account,
                                reaction: reaction,
                              ).notifier,
                            )
                            .remove(index),
                        style: style.apply(fontSizeFactor: 2.0),
                        disableTooltip: true,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ListTile(
          leading: const Icon(Icons.add),
          title: Text(t.misskey.reactionSettingDescription2),
          onTap: () async {
            final emoji = await pickEmoji(ref, account, reaction: reaction);
            if (emoji != null) {
              await ref
                  .read(
                    pinnedEmojisNotifierProvider(
                      account,
                      reaction: reaction,
                    ).notifier,
                  )
                  .add(emoji);
            }
          },
          dense: true,
        ),
        ListTile(
          leading: const Icon(Icons.copy),
          title: Text(t.misskey.copy),
          onTap: () => copyToClipboard(
            context,
            useEmojiPalette
                ? pinnedEmojis
                      .map((emoji) => emoji.replaceAll('@.', ''))
                      .join(' ')
                : json5Encode(pinnedEmojis),
          ),
          dense: true,
        ),
        ListTile(
          leading: const Icon(Icons.paste),
          title: Text(t.aria.paste),
          onTap: () async {
            final emojis = await showDialog<List<String>>(
              context: context,
              builder: (context) =>
                  PasteEmojisDialog(account: account, reaction: reaction),
            );
            if (emojis != null) {
              await ref
                  .read(
                    pinnedEmojisNotifierProvider(
                      account,
                      reaction: reaction,
                    ).notifier,
                  )
                  .addAll(emojis);
            }
          },
          dense: true,
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
                  .read(
                    pinnedEmojisNotifierProvider(
                      account,
                      reaction: reaction,
                    ).notifier,
                  )
                  .reset();
            }
          },
          iconColor: theme.colorScheme.error,
          textColor: theme.colorScheme.error,
          dense: true,
        ),
      ],
    );
  }
}
