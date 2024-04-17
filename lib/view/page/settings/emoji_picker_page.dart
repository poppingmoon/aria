import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/default_pinned_emojis.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/general_settings.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../widget/unicode_emoji.dart';
import '../../widget/user_tile.dart';

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
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.emojiPicker)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListTileTheme(
          tileColor: colors.panel,
          child: ListView(
            children: [
              if (accounts.isNotEmpty) ...[
                Container(
                  height: 8.0,
                  margin: const EdgeInsets.only(top: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    color: colors.panel,
                  ),
                ),
                ...ListTile.divideTiles(
                  context: context,
                  tiles: accounts.map((account) {
                    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
                    if (i != null) {
                      return UserTile(
                        account: account,
                        user: i,
                        onTap: () => context
                            .push('/settings/accounts/$account/emoji-picker'),
                      );
                    } else {
                      return ListTile(
                        subtitle: Text(account.toString()),
                        onTap: () => context
                            .push('/settings/accounts/$account/emoji-picker'),
                      );
                    }
                  }),
                ),
                Container(
                  height: 8.0,
                  margin: const EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    color: colors.panel,
                  ),
                ),
              ],
              Container(
                height: 8.0,
                margin: const EdgeInsets.only(top: 8.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  color: colors.panel,
                ),
              ),
              SwitchListTile(
                title: Text(t.aria.emojiPickerUseDialog),
                value: settings.emojiPickerUseDialog,
                onChanged: (value) => ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setEmojiPickerUseDialog(value),
              ),
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
              Container(
                padding: const EdgeInsets.all(8.0),
                color: colors.panel,
                child: Wrap(
                  spacing: 4.0,
                  runSpacing: 4.0,
                  children: defaultPinnedEmojis
                      .map(
                        (emoji) => UnicodeEmoji(
                          emoji: emoji,
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                fontSizeFactor: 2.0 * emojiPickerScale.value,
                              ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SwitchListTile(
                title: Text(t.aria.emojiPickerAutofocus),
                value: settings.emojiPickerAutofocus,
                onChanged: (value) => ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setEmojiPickerAutofocus(value),
              ),
              Container(
                height: 8.0,
                margin: const EdgeInsets.only(bottom: 8.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  color: colors.panel,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
