import 'package:collection/collection.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/categorized_unicode_emojis.g.dart';
import '../../constant/shortcuts.dart';
import '../../extension/emoji_extension.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/categorized_emojis_provider.dart';
import '../../provider/custom_emoji_index_provider.dart';
import '../../provider/emoji_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/pinned_emojis_notifier_provider.dart';
import '../../provider/recently_used_emojis_notifier_provider.dart';
import '../../provider/search_custom_emojis_provider.dart';
import '../../provider/search_unicode_emojis_provider.dart';
import '../../util/check_reaction_permissions.dart';
import '../page/emoji_page.dart';
import 'custom_emoji.dart';
import 'emoji_sheet.dart';
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
}) {
  Future<void> onTap(WidgetRef ref, String emoji, bool keepOpen) async {
    if (confirmBeforePop && emoji.startsWith(':')) {
      final confirmed = await showDialog<bool>(
        context: ref.context,
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
    if (!ref.context.mounted) return;
    if (!keepOpen) {
      ref.context.pop(emoji);
    }
  }

  final settings = ref.read(generalSettingsNotifierProvider);
  if (settings.emojiPickerUseDialog) {
    return showDialog<String>(
      context: ref.context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: EmojiPicker(
          account: account,
          onTapEmoji: onTap,
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
        initialChildSize: settings.emojiPickerAutofocus ? 0.8 : 0.5,
        minChildSize: 0.5,
        maxChildSize: 0.8,
        expand: false,
        builder: (context, scrollController) => EmojiPicker(
          account: account,
          onTapEmoji: onTap,
          scrollController: scrollController,
          reaction: reaction,
          targetNote: targetNote,
          post: post,
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      isScrollControlled: true,
      clipBehavior: Clip.hardEdge,
    );
  }
}

class const EmojiPicker({
  super.key,
  required final Account account,
  required final void Function(WidgetRef ref, String emoji, bool popEmoji)
  onTapEmoji,
  final ScrollController? scrollController,
  final bool reaction = false,
  final Note? targetNote,
  final bool post = false,
}) extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(categorizedEmojisProvider(account.host));
    final i = ref.watch(iNotifierProvider(account)).value;
    final style = DefaultTextStyle.of(context).style;
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final scrollController = this.scrollController ?? useScrollController();
    final query = useState('');
    final generalSettings = ref.watch(generalSettingsNotifierProvider);
    final emojiPickerAutofocus = generalSettings.emojiPickerAutofocus;
    final emojiPickerScale = generalSettings.emojiPickerScale;
    final fontScaleFactor = 2.0 * emojiPickerScale;
    final emojis = ref.watch(emojisNotifierProvider(account.host)).value;
    final customEmojis = ref.watch(
      searchCustomEmojisProvider(account.host, query.value),
    );
    final unicodeEmojis = ref.watch(searchUnicodeEmojisProvider(query.value));
    final pinnedEmojis = ref.watch(
      pinnedEmojisNotifierProvider(account, reaction: reaction),
    );
    final recentlyUsedEmojis = ref.watch(
      recentlyUsedEmojisNotifierProvider(account),
    );
    final keepOpen =
        post &&
        ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => settings.emojiPickerKeepOpen,
          ),
        );
    useEffect(() {
      void controllerCallback() {
        query.value = controller.text;
      }

      bool previouslyFocused = false;

      void focusNodeCallback() {
        if (!previouslyFocused) {
          ref.read(customEmojiIndexProvider(account.host));
          previouslyFocused = true;
        }
      }

      controller.addListener(controllerCallback);
      focusNode.addListener(focusNodeCallback);
      return () {
        controller.removeListener(controllerCallback);
        focusNode.removeListener(focusNodeCallback);
      };
    }, []);
    final theme = Theme.of(context);
    final devicePixelRatio = MediaQuery.devicePixelRatioOf(context);

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
              focusNode: focusNode,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: t.misskey.search,
                suffixIcon: IconButton(
                  style: IconButton.styleFrom(minimumSize: Size.zero),
                  onPressed: () => controller.clear(),
                  icon: const Icon(Icons.close),
                ),
              ),
              textInputAction: TextInputAction.search,
              autofocus: emojiPickerAutofocus,
              onTapOutside: (_) => primaryFocus?.unfocus(),
            ),
          ),
        ),
        if (customEmojis.isNotEmpty || unicodeEmojis.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: [
                ...customEmojis.map((name) {
                  final emoji = ':$name@.:';
                  final enabled = switch (targetNote) {
                    final note? => switch (emojis?[name]) {
                      final emoji? => checkReactionPermissions(i, note, emoji),
                      _ => true,
                    },
                    _ => true,
                  };

                  return _CustomEmoji(
                    account: account,
                    emoji: emoji,
                    onTap: enabled
                        ? () => onTapEmoji(ref, emoji, keepOpen)
                        : null,
                    onLongPress: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) =>
                          EmojiSheet(account: account, emoji: emoji),
                    ),
                    height: style.lineHeight * fontScaleFactor,
                    opacity: enabled ? 1.0 : 0.1,
                    fallbackTextStyle: style.apply(
                      fontSizeFactor: fontScaleFactor,
                    ),
                    placeholderColor: theme.colorScheme.surfaceContainerHigh,
                    devicePixelRatio: devicePixelRatio,
                  );
                }),
                ...unicodeEmojis.map(
                  (emoji) => UnicodeEmoji(
                    account: account,
                    emoji: emoji,
                    style: style.apply(fontSizeFactor: fontScaleFactor),
                    onTap: () => onTapEmoji(ref, emoji, keepOpen),
                    onLongPress: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) =>
                          EmojiSheet(account: account, emoji: emoji),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
        if (pinnedEmojis.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: pinnedEmojis.mapIndexed((index, emoji) {
                if (emoji.startsWith(':')) {
                  final customEmoji = ref.watch(
                    emojiProvider(account.host, emoji),
                  );
                  final enabled =
                      targetNote == null ||
                      customEmoji == null ||
                      checkReactionPermissions(i, targetNote!, customEmoji);

                  return _CustomEmoji(
                    account: account,
                    emoji: emoji,
                    onTap: enabled
                        ? () => onTapEmoji(ref, emoji, keepOpen)
                        : null,
                    onLongPress: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => EmojiSheet(
                        account: account,
                        emoji: emoji,
                        remove: () {
                          ref
                              .read(
                                pinnedEmojisNotifierProvider(
                                  account,
                                  reaction: reaction,
                                ).notifier,
                              )
                              .remove(index);
                          context.pop();
                        },
                      ),
                    ),
                    height: style.lineHeight * fontScaleFactor,
                    opacity: enabled ? 1.0 : 0.1,
                    fallbackTextStyle: style.apply(
                      fontSizeFactor: fontScaleFactor,
                    ),
                    placeholderColor: theme.colorScheme.surfaceContainerHigh,
                    devicePixelRatio: devicePixelRatio,
                  );
                } else {
                  return UnicodeEmoji(
                    account: account,
                    emoji: emoji,
                    style: style.apply(fontSizeFactor: fontScaleFactor),
                    onTap: () => onTapEmoji(ref, emoji, keepOpen),
                    onLongPress: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => EmojiSheet(
                        account: account,
                        emoji: emoji,
                        remove: () {
                          ref
                              .read(
                                pinnedEmojisNotifierProvider(
                                  account,
                                  reaction: reaction,
                                ).notifier,
                              )
                              .remove(index);
                          context.pop();
                        },
                      ),
                    ),
                  );
                }
              }).toList(),
            ),
          ),
          const Divider(),
        ],
        if (recentlyUsedEmojis.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(t.misskey.recentUsed),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: recentlyUsedEmojis.mapIndexed((index, emoji) {
                if (emoji.startsWith(':')) {
                  final customEmoji = ref.watch(
                    emojiProvider(account.host, emoji),
                  );
                  final enabled =
                      targetNote == null ||
                      customEmoji == null ||
                      checkReactionPermissions(i, targetNote!, customEmoji);

                  return _CustomEmoji(
                    account: account,
                    emoji: emoji,
                    onTap: enabled
                        ? () => onTapEmoji(ref, emoji, keepOpen)
                        : null,
                    onLongPress: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => EmojiSheet(
                        account: account,
                        emoji: emoji,
                        remove: () {
                          ref
                              .read(
                                recentlyUsedEmojisNotifierProvider(account)
                                    .notifier,
                              )
                              .remove(index);
                          context.pop();
                        },
                      ),
                    ),
                    height: style.lineHeight * fontScaleFactor,
                    opacity: enabled ? 1.0 : 0.1,
                    fallbackTextStyle: style.apply(
                      fontSizeFactor: fontScaleFactor,
                    ),
                    placeholderColor: theme.colorScheme.surfaceContainerHigh,
                    devicePixelRatio: devicePixelRatio,
                  );
                } else {
                  return UnicodeEmoji(
                    account: account,
                    emoji: emoji,
                    style: style.apply(fontSizeFactor: fontScaleFactor),
                    onTap: () => onTapEmoji(ref, emoji, keepOpen),
                    onLongPress: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => EmojiSheet(
                        account: account,
                        emoji: emoji,
                        remove: () {
                          ref
                              .read(
                                recentlyUsedEmojisNotifierProvider(account)
                                    .notifier,
                              )
                              .remove(index);
                          context.pop();
                        },
                      ),
                    ),
                  );
                }
              }).toList(),
            ),
          ),
          const Divider(),
        ],
        if (groups.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Wrap(
                      spacing: 4.0,
                      runSpacing: 4.0,
                      children: e.value.map((emoji) {
                        final enabled =
                            targetNote == null ||
                            checkReactionPermissions(i, targetNote!, emoji);

                        return _CustomEmoji(
                          account: account,
                          emoji: emoji.emoji,
                          onTap: enabled
                              ? () => onTapEmoji(ref, emoji.emoji, keepOpen)
                              : null,
                          onLongPress: () => showModalBottomSheet<void>(
                            context: context,
                            builder: (context) => EmojiSheet(
                              account: account,
                              emoji: emoji.emoji,
                            ),
                          ),
                          height: style.lineHeight * fontScaleFactor,
                          opacity: enabled ? 1.0 : 0.1,
                          fallbackTextStyle: style.apply(
                            fontSizeFactor: fontScaleFactor,
                          ),
                          placeholderColor:
                              theme.colorScheme.surfaceContainerHigh,
                          devicePixelRatio: devicePixelRatio,
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
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                  alignment: AlignmentDirectional.centerStart,
                  child: Wrap(
                    spacing: 4.0,
                    runSpacing: 4.0,
                    children: emojis
                        .map(
                          (emoji) => UnicodeEmoji(
                            account: account,
                            emoji: emoji,
                            style: style.apply(fontSizeFactor: fontScaleFactor),
                            onTap: () => onTapEmoji(ref, emoji, keepOpen),
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

class const _CustomEmoji({
  required final Account account,
  required final String emoji,
  required final void Function()? onTap,
  required final void Function()? onLongPress,
  required final double height,
  final double opacity = 1.0,
  required final TextStyle fallbackTextStyle,
  required final Color placeholderColor,
  required final double devicePixelRatio,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomEmoji(
      account: account,
      emoji: emoji,
      onTap: onTap,
      onLongPress: onLongPress,
      height: height,
      opacity: opacity,
      fallbackTextStyle: fallbackTextStyle,
      placeholderBuilder: (context) => SizedBox.square(
        dimension: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: placeholderColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      cacheHeight: (height * devicePixelRatio).ceil(),
    );
  }
}
