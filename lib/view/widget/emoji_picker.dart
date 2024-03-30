import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/categorized_unicode_emojis.g.dart';
import '../../constant/shortcuts.dart';
import '../../extension/emoji_extension.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/categorized_emojis_provider.dart';
import '../../provider/emoji_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/pinned_emojis_notifier_provider.dart';
import '../../provider/recently_used_emojis_notifier_provider.dart';
import '../../provider/search_custom_emojis_provider.dart';
import '../../provider/search_unicode_emojis_provider.dart';
import '../../util/check_reaction_permissions.dart';
import '../page/emoji_page.dart';
import 'custom_emoji.dart';
import 'emoji_widget.dart';
import 'unicode_emoji.dart';

Future<String?> pickEmoji(
  WidgetRef ref,
  Account account, {
  bool reaction = false,
  bool saveHistory = true,
  bool confirmBeforePop = false,
  Note? targetNote,
}) async {
  Future<void> onTapEmoji(BuildContext context, String emoji) async {
    if (confirmBeforePop && emoji.startsWith(':')) {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => EmojiPage(
          account: account,
          name: emoji.substring(1, emoji.length - 1).replaceAll('@.', ''),
          confirm: true,
        ),
      );
      if (!(confirmed ?? false)) return;
    }
    if (!account.isGuest && saveHistory) {
      final isPinned = ref
          .read(pinnedEmojisNotifierProvider(account, reaction: reaction))
          .contains(emoji);
      if (!isPinned) {
        await ref
            .read(recentlyUsedEmojisNotifierProvider(account).notifier)
            .add(emoji);
      }
    }
    if (!context.mounted) return;
    context.pop(emoji);
  }

  final useDialog =
      ref.read(generalSettingsNotifierProvider).emojiPickerUseDialog;
  if (useDialog) {
    return showDialog<String>(
      context: ref.context,
      builder: (context) => Dialog(
        child: EmojiPicker(
          account: account,
          onTapEmoji: (emoji) => onTapEmoji(context, emoji),
          reaction: reaction,
          targetNote: targetNote,
        ),
      ),
    );
  } else {
    return showModalBottomSheet<String>(
      context: ref.context,
      builder: (context) => DraggableScrollableSheet(
        minChildSize: 0.5,
        maxChildSize: 0.8,
        expand: false,
        builder: (context, scrollController) => EmojiPicker(
          account: account,
          onTapEmoji: (emoji) => onTapEmoji(context, emoji),
          scrollController: scrollController,
          reaction: reaction,
          targetNote: targetNote,
        ),
      ),
      isScrollControlled: true,
    );
  }
}

class EmojiPicker extends HookConsumerWidget {
  const EmojiPicker({
    super.key,
    required this.account,
    required this.onTapEmoji,
    this.scrollController,
    this.reaction = false,
    this.targetNote,
  });

  final Account account;
  final void Function(String emoji) onTapEmoji;
  final ScrollController? scrollController;
  final bool reaction;
  final Note? targetNote;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(categorizedEmojisProvider(account.host));
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final style = DefaultTextStyle.of(context).style;
    final controller = useTextEditingController();
    final query = useState('');
    useEffect(
      () {
        controller.addListener(() => query.value = controller.text);
        return;
      },
      [],
    );
    final generalSettings = ref.watch(generalSettingsNotifierProvider);
    final emojiPickerAutofocus = generalSettings.emojiPickerAutofocus;
    final emojiPickerScale = generalSettings.emojiPickerScale;
    final fontScaleFactor = 2.0 * emojiPickerScale;
    final customEmojis =
        ref.watch(searchCustomEmojisProvider(account.host, query.value));
    final unicodeEmojis = ref.watch(searchUnicodeEmojisProvider(query.value));
    final pinnedEmojis =
        ref.watch(pinnedEmojisNotifierProvider(account, reaction: reaction));
    final recentlyUsedEmojis =
        ref.watch(recentlyUsedEmojisNotifierProvider(account));

    return ListView(
      controller: scrollController,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shortcuts(
            shortcuts: disablingTextShortcuts,
            child: TextField(
              controller: controller,
              autofocus: emojiPickerAutofocus,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: t.misskey.search,
                suffixIcon: IconButton(
                  onPressed: () => controller.clear(),
                  icon: const Icon(Icons.close),
                ),
              ),
              textInputAction: TextInputAction.search,
              onTapOutside: (_) => primaryFocus?.unfocus(),
            ),
          ),
        ),
        if (customEmojis.isNotEmpty || unicodeEmojis.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: [
                ...customEmojis.map((emoji) {
                  final enabled = targetNote == null ||
                      checkReactionPermissions(i, targetNote!, emoji);
                  return CustomEmoji(
                    account: account,
                    emoji: emoji.emoji,
                    onTap: enabled ? () => onTapEmoji(emoji.emoji) : null,
                    height: style.lineHeight * fontScaleFactor,
                    opacity: enabled ? 1.0 : 0.1,
                    fallbackTextStyle:
                        style.apply(fontSizeFactor: fontScaleFactor),
                  );
                }),
                ...unicodeEmojis.map(
                  (emoji) => UnicodeEmoji(
                    emoji: emoji,
                    style: style.apply(fontSizeFactor: fontScaleFactor),
                    onTap: () => onTapEmoji(emoji),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
        if (pinnedEmojis.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: pinnedEmojis.map((emoji) {
                final customEmoji = emoji.startsWith(':')
                    ? ref.watch(emojiProvider(account.host, emoji))
                    : null;
                final enabled = targetNote == null ||
                    customEmoji == null ||
                    checkReactionPermissions(i, targetNote!, customEmoji);
                return EmojiWidget(
                  account: account,
                  emoji: emoji,
                  onTap: enabled ? () => onTapEmoji(emoji) : null,
                  style: style.apply(
                    fontSizeFactor: fontScaleFactor,
                    color: style.color?.withOpacity(enabled ? 1.0 : 0.1),
                  ),
                );
              }).toList(),
            ),
          ),
          const Divider(),
        ],
        if (recentlyUsedEmojis.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(t.misskey.recentUsed),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: recentlyUsedEmojis.map((emoji) {
                final customEmoji = emoji.startsWith(':')
                    ? ref.watch(emojiProvider(account.host, emoji))
                    : null;
                final enabled = targetNote == null ||
                    customEmoji == null ||
                    checkReactionPermissions(i, targetNote!, customEmoji);
                return EmojiWidget(
                  account: account,
                  emoji: emoji,
                  onTap: enabled ? () => onTapEmoji(emoji) : null,
                  style: style.apply(
                    fontSizeFactor: fontScaleFactor,
                    color: style.color?.withOpacity(enabled ? 1.0 : 0.1),
                  ),
                );
              }).toList(),
            ),
          ),
          const Divider(),
        ],
        if (groups.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(t.misskey.customEmojis),
          ),
          ...groups.entries.map(
            (e) => ExpansionTile(
              title: Text.rich(
                TextSpan(
                  text: e.key,
                  children: [
                    TextSpan(
                      text: ' (${e.value.length})',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      spacing: 4.0,
                      runSpacing: 4.0,
                      children: e.value.map((emoji) {
                        final enabled = targetNote == null ||
                            checkReactionPermissions(i, targetNote!, emoji);
                        return CustomEmoji(
                          account: account,
                          emoji: emoji.emoji,
                          onTap: enabled ? () => onTapEmoji(emoji.emoji) : null,
                          height: style.lineHeight * fontScaleFactor,
                          opacity: enabled ? 1.0 : 0.1,
                          fallbackTextStyle:
                              style.apply(fontSizeFactor: fontScaleFactor),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(t.misskey.emoji),
        ),
        ...categorizedUnicodeEmojis.entries.map((e) {
          final category = e.key;
          final emojis = e.value;
          return ExpansionTile(
            title: Text(category),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    spacing: 4.0,
                    runSpacing: 4.0,
                    children: emojis
                        .map(
                          (emoji) => UnicodeEmoji(
                            emoji: emoji,
                            style: style.apply(fontSizeFactor: fontScaleFactor),
                            onTap: () => onTapEmoji(emoji),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          );
        }),
      ],
    );
  }
}
