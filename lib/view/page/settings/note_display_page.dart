import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:twemoji_v2/twemoji_v2.dart';

import '../../../constant/default_pinned_emojis.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/general_settings.dart';
import '../../../provider/cache_manager_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../util/asset_cache_manager.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/general_settings_scaffold.dart';
import '../../widget/note_widget.dart';

enum _NoteDisplayArea { settings, preview }

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
    final lineHeight = useState(
      clampDouble(
        settings.lineHeight,
        minLineHeight,
        maxLineHeight,
      ),
    );
    final avatarScale = useState(
      clampDouble(
        settings.avatarScale,
        minAvatarScale,
        maxAvatarScale,
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
    final noteVerticalPadding = useState(
      clampDouble(
        settings.noteVerticalPadding,
        0.0,
        maxNoteVerticalPadding,
      ),
    );
    final noteHorizontalPadding = useState(
      clampDouble(
        settings.noteHorizontalPadding,
        minNoteHorizontalPadding,
        maxNoteHorizontalPadding,
      ),
    );

    return GeneralSettingsScaffold(
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
          initialAreas: [
            Area(data: _NoteDisplayArea.settings),
            Area(data: _NoteDisplayArea.preview),
          ],
          builder: (context, area) => switch (area.data as _NoteDisplayArea) {
            _NoteDisplayArea.settings => ListView(
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
                    title: const Text('Show reactions count'),
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
                    title: Text(t.misskey.instanceTicker),
                    subtitle: Text(
                      switch (settings.instanceTicker) {
                        InstanceTicker.none => t.misskey.instanceTicker_.none,
                        InstanceTicker.remote =>
                          t.misskey.instanceTicker_.remote,
                        InstanceTicker.always =>
                          t.misskey.instanceTicker_.always,
                      },
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      final result = await showRadioDialog(
                        context,
                        title: Text(t.misskey.instanceTicker),
                        values: InstanceTicker.values,
                        initialValue: settings.instanceTicker,
                        itemBuilder: (context, value) => Text(
                          switch (value) {
                            InstanceTicker.none =>
                              t.misskey.instanceTicker_.none,
                            InstanceTicker.remote =>
                              t.misskey.instanceTicker_.remote,
                            InstanceTicker.always =>
                              t.misskey.instanceTicker_.always,
                          },
                        ),
                      );
                      if (result != null) {
                        await ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setInstanceTicker(result);
                      }
                    },
                  ),
                  SwitchListTile(
                    title: Text(t.aria.showNoteCreatedAt),
                    value: settings.showNoteCreatedAt,
                    onChanged: (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setShowNoteCreatedAt(value),
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
                    title: Text(t.aria.showQuoteButtonInNoteFooter),
                    value: settings.showQuoteButtonInNoteFooter,
                    onChanged: (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setShowQuoteButtonInNoteFooter(value),
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
                    title: Text(t.aria.lineHeight),
                    subtitle: Slider(
                      value: lineHeight.value,
                      min: minLineHeight,
                      max: maxLineHeight,
                      label: lineHeight.value.toStringAsFixed(1),
                      onChanged: (value) => lineHeight.value = value,
                      onChangeEnd: (value) => ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setLineHeight(value),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        lineHeight.value = defaultLineHeight;
                        ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setLineHeight(defaultLineHeight);
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ),
                  ListTile(
                    title: Text(t.aria.avatarSize),
                    subtitle: Slider(
                      value: avatarScale.value,
                      min: minAvatarScale,
                      max: maxAvatarScale,
                      label: avatarScale.value.toStringAsFixed(1),
                      onChanged: (value) => avatarScale.value = value,
                      onChangeEnd: (value) => ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setAvatarScale(value),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        avatarScale.value = defaultAvatarScale;
                        ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setAvatarScale(defaultAvatarScale);
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
                            .read(
                              generalSettingsNotifierProvider.notifier,
                            )
                            .setNoteFooterScale(1.0);
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      t.aria.margin,
                      style: TextStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.8),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(t.misskey.vertical),
                    subtitle: Slider(
                      value: noteVerticalPadding.value,
                      max: maxNoteVerticalPadding,
                      label: noteVerticalPadding.value.toStringAsFixed(1),
                      onChanged: (value) => noteVerticalPadding.value = value,
                      onChangeEnd: (value) => ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setNoteVerticalPadding(value),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        noteVerticalPadding.value = defaultNoteVerticalPadding;
                        ref
                            .read(
                              generalSettingsNotifierProvider.notifier,
                            )
                            .setNoteVerticalPadding(defaultNoteVerticalPadding);
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ),
                  ListTile(
                    title: Text(t.misskey.horizontal),
                    subtitle: Slider(
                      value: noteHorizontalPadding.value,
                      min: minNoteHorizontalPadding,
                      max: maxNoteHorizontalPadding,
                      label: noteHorizontalPadding.value.toStringAsFixed(1),
                      onChanged: (value) => noteHorizontalPadding.value = value,
                      onChangeEnd: (value) => ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setNoteHorizontalPadding(value),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        noteHorizontalPadding.value =
                            defaultNoteHorizontalPadding;
                        ref
                            .read(
                              generalSettingsNotifierProvider.notifier,
                            )
                            .setNoteHorizontalPadding(
                              defaultNoteHorizontalPadding,
                            );
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ),
                ],
              ),
            _NoteDisplayArea.preview => SingleChildScrollView(
                child: Card(
                  margin: const EdgeInsets.all(8.0),
                  color: Theme.of(context).colorScheme.surface,
                  elevation: 0.0,
                  child: ProviderScope(
                    overrides: [
                      // ignore: scoped_providers_should_specify_dependencies
                      cacheManagerProvider
                          .overrideWithValue(AssetCacheManager()),
                    ],
                    child: SizedBox(
                      width: 800.0,
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
                            avatarUrl: Uri(
                              path:
                                  'packages/twemoji_v2/assets/svg/${TwemojiUtils.toUnicode('🫠')}.svg',
                            ),
                            avatarDecorations: [
                              const UserAvatarDecoration(
                                id: '',
                                url: Assets.flower,
                              ),
                            ],
                            instance: UserInstanceInfo(
                              name: 'example.tld',
                              faviconUrl: Uri(
                                path: Assets.misskey.packages.frontend.assets
                                    .aboutIcon.path,
                              ),
                              themeColor: '86b300',
                            ),
                          ),
                          userId: '',
                          visibility: NoteVisibility.public,
                          renoteCount: 0,
                          repliesCount: 0,
                          reactionCount: 55,
                          reactions: defaultPinnedEmojis.asMap().map(
                                (key, value) => MapEntry(value, key + 1),
                              ),
                          fileIds: [],
                          files: [
                            DriveFile(
                              id: '',
                              createdAt: DateTime.now(),
                              name: '',
                              type: 'image/webp',
                              md5: '',
                              size: 0,
                              isSensitive: false,
                              properties: const DriveFileProperties(),
                              thumbnailUrl: Assets.bird.path,
                              url: Assets.bird.path,
                            ),
                            DriveFile(
                              id: '',
                              createdAt: DateTime.now(),
                              name: '',
                              type: 'image/webp',
                              md5: '',
                              size: 0,
                              isSensitive: true,
                              properties: const DriveFileProperties(),
                              thumbnailUrl: Assets.cat.path,
                              url: Assets.cat.path,
                            ),
                          ],
                          renoteId: '',
                          renote: Note(
                            id: '',
                            createdAt: DateTime.now()
                                .subtract(const Duration(hours: 1)),
                            text: 'just setting up my msky',
                            user: UserLite(
                              id: '',
                              username: 'admin',
                              avatarUrl: Uri(
                                path:
                                    'packages/twemoji_v2/assets/svg/${TwemojiUtils.toUnicode('🌆')}.svg',
                              ),
                            ),
                            userId: '',
                            visibility: NoteVisibility.public,
                            renoteCount: 1,
                            repliesCount: 0,
                            reactionCount: 55,
                            reactions: defaultPinnedEmojis.asMap().map(
                                  (key, value) => MapEntry(value, key + 1),
                                ),
                            fileIds: [],
                            files: [],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          },
        ),
      ),
      selectedDestination: GeneralSettingsDestination.noteDisplay,
    );
  }
}
