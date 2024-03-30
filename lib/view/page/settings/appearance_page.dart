import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/default_pinned_emojis.dart';
import '../../../gen/fonts.gen.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/general_settings.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/reaction_button.dart';
import '../../widget/unicode_emoji.dart';

class AppearancePage extends HookConsumerWidget {
  const AppearancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsNotifierProvider);
    final fontSize = useState(
      clampDouble(
        settings.fontSize,
        minFontSize,
        maxFontSize,
      ),
    );
    final reactionsDisplayScale = useState(
      clampDouble(
        settings.reactionsDisplayScale,
        minReactionsDisplayScale,
        maxReactionsDisplayScale,
      ),
    );
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
              t.misskey.displayOfNote,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
              ),
            ),
          ),
          SwitchListTile(
            title: Text(t.misskey.collapseRenotes),
            value: settings.collapseRenotes,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setCollapseRenotes(value),
          ),
          ListTile(
            title: Text(t.misskey.displayOfSensitiveMedia),
            subtitle: Text(
              switch (settings.sensitive) {
                SensitiveMediaDisplay.respect =>
                  t.misskey.displayOfSensitiveMedia_.respect,
                SensitiveMediaDisplay.ignore =>
                  t.misskey.displayOfSensitiveMedia_.ignore,
                SensitiveMediaDisplay.force =>
                  t.misskey.displayOfSensitiveMedia_.force,
              },
            ),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showRadioDialog(
                context,
                title: Text(t.misskey.displayOfSensitiveMedia),
                values: SensitiveMediaDisplay.values,
                initialValue: settings.sensitive,
                itemBuilder: (context, value) => Text(
                  switch (value) {
                    SensitiveMediaDisplay.respect =>
                      t.misskey.displayOfSensitiveMedia_.respect,
                    SensitiveMediaDisplay.ignore =>
                      t.misskey.displayOfSensitiveMedia_.ignore,
                    SensitiveMediaDisplay.force =>
                      t.misskey.displayOfSensitiveMedia_.force,
                  },
                ),
              );
              if (result != null) {
                await ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setSensitive(result);
              }
            },
          ),
          SwitchListTile(
            title: Text(t.misskey.highlightSensitiveMedia),
            value: settings.highlightSensitiveMedia,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setHighlightSensitiveMedia(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.enableAnimatedMfm),
            value: settings.animatedMfm,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setAnimatedMfm(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.enableAdvancedMfm),
            value: settings.advancedMfm,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setAdvancedMfm(value),
          ),
          // TODO: Update localization
          // SwitchListTile(
          //   title: Text(t.misskey.showReactionsCount),
          //   value: settings.showReactionsCount,
          //   onChanged: (value) => ref
          //       .read(generalSettingsNotifierProvider.notifier)
          //       .setShowReactionsCount(value),
          // ),
          SwitchListTile(
            title: Text(t.misskey.loadRawImages),
            value: settings.loadRawImages,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setLoadRawImages(value),
          ),
          ListTile(
            title: Text(t.misskey.emojiStyle),
            subtitle: Text(
              switch (settings.emojiStyle) {
                EmojiStyle.native => t.misskey.native,
                EmojiStyle.twemoji => 'Twemoji',
              },
            ),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showRadioDialog(
                context,
                title: Text(t.misskey.emojiStyle),
                values: EmojiStyle.values,
                initialValue: settings.emojiStyle,
                itemBuilder: (context, value) => Text(
                  switch (value) {
                    EmojiStyle.native => t.misskey.native,
                    EmojiStyle.twemoji => 'Twemoji',
                  },
                ),
              );
              if (result != null) {
                await ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setEmojiStyle(result);
              }
            },
          ),
          SwitchListTile(
            title: Text(t.aria.showAvatarsInNote),
            value: settings.showAvatarsInNote,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowAvatarsInNote(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.squareAvatars),
            value: settings.squareAvatars,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setSquareAvatars(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.showAvatarDecorations),
            value: settings.showAvatarDecorations,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowAvatarDecorations(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.showClipButtonInNoteFooter),
            value: settings.showClipButtonInNoteFooter,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowClipButtonInNoteFooter(value),
          ),
          SwitchListTile(
            title: Text(t.aria.showTranslateButtonInNoteFooter),
            value: settings.showTranslateButtonInNoteFooter,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowTranslateButtonInNoteFooter(value),
          ),
          SwitchListTile(
            title: Text(t.aria.showNoteFooter),
            value: settings.showNoteFooter,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowNoteFooter(value),
          ),
          SwitchListTile(
            title: Text(t.aria.showNoteReactionsViewer),
            value: settings.showNoteReactionsViewer,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowNoteReactionsViewer(value),
          ),
          SwitchListTile(
            title: Text(t.aria.showSubNoteFooter),
            value: settings.showSubNoteFooter,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowSubNoteFooter(value),
          ),
          SwitchListTile(
            title: Text(t.aria.showSubNoteReactionsViewer),
            value: settings.showSubNoteReactionsViewer,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setShowSubNoteReactionsViewer(value),
          ),
          ListTile(
            title: Text(t.aria.font),
            subtitle: Text(settings.fontFamily ?? t.misskey.system),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showRadioDialog(
                context,
                title: Text(t.aria.font),
                values: [
                  (null,),
                  (FontFamily.bIZUDGothic,),
                  (FontFamily.bIZUDMincho,),
                  (FontFamily.mPlus1,),
                  (FontFamily.mPlus2,),
                  (FontFamily.notoSansJP,),
                  (FontFamily.notoSansKR,),
                  (FontFamily.notoSansSC,),
                  (FontFamily.notoSansTC,),
                  (FontFamily.notoSerifJP,),
                  (FontFamily.nunito,),
                  (FontFamily.pretendard,),
                ],
                initialValue: (settings.fontFamily,),
                itemBuilder: (context, value) => Text(
                  value.$1 ?? t.misskey.system,
                  style: TextStyle(fontFamily: value.$1),
                ),
              );
              if (result != null) {
                await ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setFontFamily(result.$1);
              }
            },
          ),
          ListTile(
            title: Text(t.misskey.fontSize),
            subtitle: Slider(
              value: fontSize.value,
              min: minFontSize,
              max: maxFontSize,
              label: fontSize.value.toStringAsFixed(1),
              onChanged: (value) => fontSize.value = value,
              onChangeEnd: (value) => ref
                  .read(generalSettingsNotifierProvider.notifier)
                  .setFontSize(value),
            ),
            trailing: IconButton(
              onPressed: () {
                fontSize.value = defaultFontSize;
                ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setFontSize(defaultFontSize);
              },
              icon: const Icon(Icons.refresh),
            ),
          ),
          ListTile(
            title: Text(t.misskey.reactionsDisplaySize),
            subtitle: Slider(
              value: reactionsDisplayScale.value,
              min: minReactionsDisplayScale,
              max: maxReactionsDisplayScale,
              label: reactionsDisplayScale.value.toStringAsFixed(3),
              onChanged: (value) => reactionsDisplayScale.value = value,
              onChangeEnd: (value) => ref
                  .read(generalSettingsNotifierProvider.notifier)
                  .setReactionsDisplayScale(value),
            ),
            trailing: IconButton(
              onPressed: () {
                reactionsDisplayScale.value = 1.0;
                ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setReactionsDisplayScale(1.0);
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
                  .mapIndexed(
                    (index, emoji) => ReactionButton(
                      account: Account.dummy(),
                      emoji: emoji,
                      count: index + 1,
                      scale: reactionsDisplayScale.value,
                    ),
                  )
                  .toList(),
            ),
          ),
          // SwitchListTile(
          //   title: Text(t.misskey.limitWidthOfReaction),
          //   value: settings.limitWidthOfReaction,
          //   onChanged: (value) => ref
          //       .read(generalSettingsNotifierProvider.notifier)
          //       .setLimitWidthOfReaction(value),
          // ),
          const Divider(),
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
