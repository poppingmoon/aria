import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:twemoji_v2/twemoji_v2.dart';

import '../../../constant/default_pinned_emojis.dart';
import '../../../gen/fonts.gen.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/general_settings.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/note_widget.dart';

class NoteDisplayPage extends HookConsumerWidget {
  const NoteDisplayPage({super.key});

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
    final noteFooterScale = useState(
      clampDouble(
        settings.noteFooterScale,
        minNoteFooterScale,
        maxNoteFooterScale,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.displayOfNote)),
      body: MultiSplitViewTheme(
        data: MultiSplitViewThemeData(
          dividerPainter: DividerPainters.grooved1(
            size: 40.0,
            highlightedSize: 60.0,
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
            highlightedColor:
                Theme.of(context).colorScheme.onSurface.withOpacity(0.9),
            thickness: 4.0,
            highlightedThickness: 6.0,
          ),
        ),
        child: MultiSplitView(
          axis: Axis.vertical,
          children: [
            ListView(
              children: [
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
                SwitchListTile(
                  // title: Text(t.misskey.showReactionsCount),
                  value: settings.showReactionsCount,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setShowReactionsCount(value),
                ),
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
                  title: Text(t.aria.showAvatarsInSubNote),
                  value: settings.showAvatarsInSubNote,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setShowAvatarsInSubNote(value),
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
                  title: Text(t.aria.showLikeButtonInNoteFooter),
                  value: settings.showLikeButtonInNoteFooter,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setShowLikeButtonInNoteFooter(value),
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
                  title: Text(t.aria.showNoteReactionsViewer),
                  value: settings.showNoteReactionsViewer,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setShowNoteReactionsViewer(value),
                ),
                SwitchListTile(
                  title: Text(t.aria.showNoteFooter),
                  value: settings.showNoteFooter,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setShowNoteFooter(value),
                ),
                SwitchListTile(
                  title: Text(t.aria.showSubNoteReactionsViewer),
                  value: settings.showSubNoteReactionsViewer,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setShowSubNoteReactionsViewer(value),
                ),
                SwitchListTile(
                  title: Text(t.aria.showSubNoteFooter),
                  value: settings.showSubNoteFooter,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setShowSubNoteFooter(value),
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
                // SwitchListTile(
                //   title: Text(t.misskey.limitWidthOfReaction),
                //   value: settings.limitWidthOfReaction,
                //   onChanged: (value) => ref
                //       .read(generalSettingsNotifierProvider.notifier)
                //       .setLimitWidthOfReaction(value),
                // ),
                ListTile(
                  title: Text(t.aria.noteFooterSize),
                  subtitle: Slider(
                    value: noteFooterScale.value,
                    min: minNoteFooterScale,
                    max: maxNoteFooterScale,
                    label: noteFooterScale.value.toStringAsFixed(3),
                    onChanged: (value) => noteFooterScale.value = value,
                    onChangeEnd: (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setNoteFooterScale(value),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      noteFooterScale.value = 1.0;
                      ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setNoteFooterScale(1.0);
                    },
                    icon: const Icon(Icons.refresh),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: NoteWidget(
                account: const Account(host: '', username: ''),
                noteId: '',
                note: Note(
                  id: '',
                  createdAt: DateTime.now(),
                  text: r'$[jelly.speed=2s $[x4 🍮]]',
                  user: UserLite(
                    id: '',
                    username: 'user',
                    avatarUrl: Uri.https(
                      'raw.githubusercontent.com',
                      'jdecked/twemoji/main/assets/72x72/${TwemojiUtils.toUnicode('🍮')}.png',
                    ),
                    avatarDecorations: [
                      const UserAvatarDecoration(
                        id: '',
                        url:
                            'https://media.misskeyusercontent.jp/io/7f797e40-9ab0-4f3b-b4c6-9d1103d637f2.png',
                      ),
                    ],
                  ),
                  userId: '',
                  visibility: NoteVisibility.public,
                  renoteCount: 0,
                  repliesCount: 0,
                  reactionCount: 55,
                  reactions: defaultPinnedEmojis
                      .asMap()
                      .map((key, value) => MapEntry(value, key + 1)),
                  fileIds: [],
                  files: [
                    DriveFile(
                      id: '',
                      createdAt: DateTime.now(),
                      name: '',
                      type: 'image/png',
                      md5: '',
                      size: 0,
                      isSensitive: false,
                      properties: const DriveFileProperties(),
                      thumbnailUrl: Uri.https(
                        'raw.githubusercontent.com',
                        'jdecked/twemoji/main/assets/72x72/${TwemojiUtils.toUnicode('👍')}.png',
                      ).toString(),
                      url: Uri.https(
                        'raw.githubusercontent.com',
                        'jdecked/twemoji/main/assets/72x72/${TwemojiUtils.toUnicode('👍')}.png',
                      ).toString(),
                    ),
                    DriveFile(
                      id: '',
                      createdAt: DateTime.now(),
                      name: '',
                      type: 'image/png',
                      md5: '',
                      size: 0,
                      isSensitive: true,
                      properties: const DriveFileProperties(),
                      thumbnailUrl: Uri.https(
                        'raw.githubusercontent.com',
                        'jdecked/twemoji/main/assets/72x72/${TwemojiUtils.toUnicode('❤️')}.png',
                      ).toString(),
                      url: Uri.https(
                        'raw.githubusercontent.com',
                        'jdecked/twemoji/main/assets/72x72/${TwemojiUtils.toUnicode('❤️')}.png',
                      ).toString(),
                    ),
                  ],
                  renoteId: '',
                  renote: Note(
                    id: '',
                    createdAt: DateTime.now(),
                    text: 'just setting up my msky',
                    user: UserLite(
                      id: '',
                      username: 'admin',
                      avatarUrl: Uri.https(
                        'raw.githubusercontent.com',
                        'jdecked/twemoji/main/assets/72x72/${TwemojiUtils.toUnicode('1️⃣')}.png',
                      ),
                    ),
                    userId: '',
                    visibility: NoteVisibility.public,
                    renoteCount: 1,
                    repliesCount: 0,
                    reactionCount: 55,
                    reactions: defaultPinnedEmojis
                        .asMap()
                        .map((key, value) => MapEntry(value, key + 1)),
                    fileIds: [],
                    files: [],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
