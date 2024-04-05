import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/default_pinned_emojis.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/general_settings.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../widget/unicode_emoji.dart';

class AppearancePage extends HookConsumerWidget {
  const AppearancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsNotifierProvider);
    final emojiPickerScale = useState(
      clampDouble(
        settings.emojiPickerScale,
        minEmojiPickerScale,
        maxEmojiPickerScale,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.appearance)),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              t.misskey.emojiPicker,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
              ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: defaultPinnedEmojis
                  .map(
                    (emoji) => UnicodeEmoji(
                      emoji: emoji,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(fontSizeFactor: 2.0 * emojiPickerScale.value),
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
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              t.misskey.dataSaver,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
              ),
            ),
          ),
          SwitchListTile(
            title: Text(t.misskey.dataSaver_.media_.title),
            subtitle: Text(t.misskey.dataSaver_.media_.description),
            value: settings.dataSaverMedia,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setDataSaverMedia(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.dataSaver_.urlPreview_.title),
            subtitle: Text(t.misskey.dataSaver_.urlPreview_.description),
            value: settings.dataSaverUrlPreview,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setDataSaverUrlPreview(value),
          ),
          const Divider(),
          SwitchListTile(
            title: Text(t.misskey.forceShowAds),
            value: settings.forceShowAds,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setForceShowAds(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.useGroupedNotifications),
            value: settings.useGroupedNotifications,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setUseGroupedNotifications(value),
          ),
          SwitchListTile(
            title: Text(t.aria.showTimelineTabBarOnBottom),
            value: settings.showTimelineTabBarOnBottom,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowTimelineTabBarOnBottom(value),
          ),
          const Divider(),
          SwitchListTile(
            title: Text(t.aria.vibrateNote),
            value: settings.vibrateNote,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setVibrateNote(value),
          ),
          SwitchListTile(
            title: Text(t.aria.vibrateNotification),
            value: settings.vibrateNotification,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setVibrateNotification(value),
          ),
        ],
      ),
    );
  }
}
