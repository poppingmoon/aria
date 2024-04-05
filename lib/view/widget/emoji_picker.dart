import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

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
  bool post = false,
  void Function(String emoji)? onTapEmoji,
}) async {
  Future<void> onTap(BuildContext context, String emoji, bool keepOpen) async {
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
    onTapEmoji?.call(emoji);
    if (!context.mounted) return;
    if (!keepOpen) {
      context.pop(emoji);
    }
  }

  final useDialog =
      ref.read(generalSettingsNotifierProvider).emojiPickerUseDialog;
  if (useDialog) {
    return showDialog<String>(
      context: ref.context,
      builder: (context) => Dialog(
        child: EmojiPicker(
          account: account,
          onTapEmoji: (emoji, keepOpen) => onTap(context, emoji, keepOpen),
          reaction: reaction,
          targetNote: targetNote,
          post: post,
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
          onTapEmoji: (emoji, keepOpen) => onTap(context, emoji, keepOpen),
          scrollController: scrollController,
          reaction: reaction,
          targetNote: targetNote,
          post: post,
        ),
      ),
      isScrollControlled: true,
      clipBehavior: Clip.hardEdge,
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
    this.post = false,
  });

  final Account account;
  final void Function(String emoji, bool popEmoji) onTapEmoji;
  final ScrollController? scrollController;
  final bool reaction;
  final Note? targetNote;
  final bool post;

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
    final keepOpen = post &&
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.emojiPickerKeepOpen),
        );

    return ListView(
      controller: scrollController,
      children: [
        if (post)
          SwitchListTile(
            title: Text(t.aria.keepOpen),
            value: keepOpen,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setEmojiPickerKeepOpen(value),
          ),
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
                    onTap: enabled
                        ? () => onTapEmoji(emoji.emoji, keepOpen)
                        : null,
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
                    onTap: () => onTapEmoji(emoji, keepOpen),
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
                  onTap: enabled ? () => onTapEmoji(emoji, keepOpen) : null,
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
                  onTap: enabled ? () => onTapEmoji(emoji, keepOpen) : null,
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
                          onTap: enabled
                              ? () => onTapEmoji(emoji.emoji, keepOpen)
                              : null,
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
                            onTap: () => onTapEmoji(emoji, keepOpen),
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
