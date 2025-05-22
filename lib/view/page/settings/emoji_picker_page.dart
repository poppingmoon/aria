import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/default_pinned_emojis.dart';
import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/general_settings.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../widget/account_preview.dart';
import '../../widget/general_settings_scaffold.dart';
import '../../widget/unicode_emoji.dart';

class EmojiPickerPage extends HookConsumerWidget {
  const EmojiPickerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);
    final settings = ref.watch(generalSettingsNotifierProvider);
    final emojiPickerScale = useState(
      clampDouble(
        settings.emojiPickerScale,
        minEmojiPickerScale,
        maxEmojiPickerScale,
      ),
    );
    final theme = Theme.of(context);

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.emojiPicker)),
      body: ListTileTheme.merge(
        tileColor: theme.colorScheme.surface,
        child: ListView(
          children: [
            const SizedBox(height: 8.0),
            for (final (index, account) in accounts.indexed) ...[
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: ListTileTheme.merge(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: index == 0
                            ? const Radius.circular(8.0)
                            : Radius.zero,
                        bottom: index == accounts.length - 1
                            ? const Radius.circular(8.0)
                            : Radius.zero,
                      ),
                    ),
                    child: AccountPreview(
                      account: account,
                      trailing: const Icon(Icons.navigate_next),
                      onTap: () => context.push(
                        '/settings/accounts/$account/emoji-picker',
                      ),
                    ),
                  ),
                ),
              ),
              if (index < accounts.length - 1)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: maxContentWidth,
                      child: Divider(height: 0.0),
                    ),
                  ),
                ),
            ],
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.aria.emojiPickerUseDialog),
                  value: settings.emojiPickerUseDialog,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setEmojiPickerUseDialog(value),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.aria.emojiPickerAutofocus),
                  value: settings.emojiPickerAutofocus,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setEmojiPickerAutofocus(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(8.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(t.aria.emojiPickerScale),
                      subtitle: Slider(
                        value: emojiPickerScale.value,
                        min: minEmojiPickerScale,
                        max: maxEmojiPickerScale,
                        label: emojiPickerScale.value.toStringAsFixed(3),
                        onChanged: (value) => emojiPickerScale.value = value,
                        onChangeEnd: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setEmojiPickerScale(value),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          emojiPickerScale.value = 1.0;
                          ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setEmojiPickerScale(1.0);
                        },
                        icon: const Icon(Icons.refresh),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Wrap(
                        spacing: 4.0,
                        runSpacing: 4.0,
                        children: defaultPinnedEmojis
                            .map(
                              (emoji) => UnicodeEmoji(
                                emoji: emoji,
                                style: theme.textTheme.bodyMedium!.apply(
                                  fontSizeFactor: 2.0 * emojiPickerScale.value,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 120.0),
          ],
        ),
      ),
      selectedDestination: GeneralSettingsDestination.emojiPicker,
    );
  }
}
