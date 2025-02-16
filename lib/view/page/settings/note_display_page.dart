import 'dart:ui';

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:twemoji_v2/twemoji_v2.dart';

import '../../../constant/default_pinned_emojis.dart';
import '../../../constant/max_content_width.dart';
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
            color:
                Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3),
            highlightedColor:
                Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.9),
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
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.collapseRenotes),
                        subtitle: Text(t.misskey.collapseRenotesDescription),
                        value: settings.collapseRenotes,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setCollapseRenotes(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.highlightSensitiveMedia),
                        value: settings.highlightSensitiveMedia,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setHighlightSensitiveMedia(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.enableAnimatedMfm),
                        value: settings.animatedMfm,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setAnimatedMfm(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.enableAdvancedMfm),
                        value: settings.advancedMfm,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setAdvancedMfm(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showRepliesCount),
                        value: settings.showRepliesCount,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowRepliesCount(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showRenotesCount),
                        value: settings.showRenotesCount,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowRenotesCount(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.showReactionsCount),
                        value: settings.showReactionsCount,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowReactionsCount(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showReactionsCountForEachTypes),
                        value: settings.showReactionsCountInReactionButton,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowReactionsCountInReactionButton(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.loadRawImages),
                        value: settings.loadRawImages,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setLoadRawImages(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.instanceTicker),
                        subtitle: Text(
                          switch (settings.instanceTicker) {
                            InstanceTicker.none =>
                              t.misskey.instanceTicker_.none,
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showNoteCreatedAt),
                        value: settings.showNoteCreatedAt,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowNoteCreatedAt(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showAvatarsInNote),
                        value: settings.showAvatarsInNote,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowAvatarsInNote(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showAvatarsInSubNote),
                        value: settings.showAvatarsInSubNote,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowAvatarsInSubNote(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.squareAvatars),
                        value: settings.squareAvatars,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setSquareAvatars(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.showAvatarDecorations),
                        value: settings.showAvatarDecorations,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowAvatarDecorations(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showQuoteButtonInNoteFooter),
                        value: settings.showQuoteButtonInNoteFooter,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowQuoteButtonInNoteFooter(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showLikeButtonInNoteFooter),
                        value: settings.showLikeButtonInNoteFooter,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowLikeButtonInNoteFooter(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.misskey.showClipButtonInNoteFooter),
                        value: settings.showClipButtonInNoteFooter,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowClipButtonInNoteFooter(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showTranslateButtonInNoteFooter),
                        value: settings.showTranslateButtonInNoteFooter,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowTranslateButtonInNoteFooter(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showNoteReactionsViewer),
                        value: settings.showNoteReactionsViewer,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowNoteReactionsViewer(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showNoteFooter),
                        value: settings.showNoteFooter,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowNoteFooter(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showSubNoteReactionsViewer),
                        value: settings.showSubNoteReactionsViewer,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowSubNoteReactionsViewer(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.showSubNoteFooter),
                        value: settings.showSubNoteFooter,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setShowSubNoteFooter(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.alwaysExpandCw),
                        value: settings.alwaysExpandCw,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setAlwaysExpandCw(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.alwaysExpandLongNote),
                        value: settings.alwaysExpandLongNote,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setAlwaysExpandLongNote(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.alwaysExpandMediaInSubNote),
                        value: settings.alwaysExpandMediaInSubNote,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setAlwaysExpandMediaInSubNote(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.mergeReactionsByName),
                        value: settings.mergeReactionsByName,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setMergeReactionsByName(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: SwitchListTile(
                        title: Text(t.aria.alwaysShowAllReactions),
                        value: settings.alwaysShowAllReactions,
                        onChanged: (value) => ref
                            .read(generalSettingsNotifierProvider.notifier)
                            .setAlwaysShowAllReactions(value),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.mediaListWithOneImageAppearance),
                        subtitle: Text(
                          switch (settings.mediaListWithOneImageAppearance) {
                            null => t.misskey.default_,
                            MediaListWithOneImageAppearance.r16_9 =>
                              t.misskey.limitTo(x: '16:9'),
                            MediaListWithOneImageAppearance.r1_1 =>
                              t.misskey.limitTo(x: '1:1'),
                            MediaListWithOneImageAppearance.r2_3 =>
                              t.misskey.limitTo(x: '2:3'),
                          },
                        ),
                        trailing: const Icon(Icons.navigate_next),
                        onTap: () async {
                          final result = await showRadioDialog(
                            context,
                            title:
                                Text(t.misskey.mediaListWithOneImageAppearance),
                            values: [
                              null,
                              ...MediaListWithOneImageAppearance.values,
                            ].map((value) => (value,)),
                            initialValue: (
                              settings.mediaListWithOneImageAppearance,
                            ),
                            itemBuilder: (context, value) => Text(
                              switch (value.$1) {
                                null => t.misskey.default_,
                                MediaListWithOneImageAppearance.r16_9 =>
                                  t.misskey.limitTo(x: '16:9'),
                                MediaListWithOneImageAppearance.r1_1 =>
                                  t.misskey.limitTo(x: '1:1'),
                                MediaListWithOneImageAppearance.r2_3 =>
                                  t.misskey.limitTo(x: '2:3'),
                              },
                            ),
                          );
                          if (result != null) {
                            await ref
                                .read(generalSettingsNotifierProvider.notifier)
                                .setMediaListWithOneImageAppearance(result.$1);
                          }
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.aria.displayOfThumbnail),
                        subtitle: Text(
                          switch (settings.thumbnailBoxFit) {
                            BoxFit.contain => t.aria.showEntireImage,
                            BoxFit.cover => t.aria.showExpandedImage,
                            _ => t.misskey.unknown,
                          },
                        ),
                        trailing: const Icon(Icons.navigate_next),
                        onTap: () async {
                          final result = await showRadioDialog(
                            context,
                            title:
                                Text(t.misskey.mediaListWithOneImageAppearance),
                            values: [BoxFit.contain, BoxFit.cover],
                            initialValue: settings.thumbnailBoxFit,
                            itemBuilder: (context, value) => Text(
                              switch (value) {
                                BoxFit.contain => t.aria.showEntireImage,
                                BoxFit.cover => t.aria.showExpandedImage,
                                _ => t.misskey.unknown,
                              },
                            ),
                          );
                          if (result != null) {
                            await ref
                                .read(generalSettingsNotifierProvider.notifier)
                                .setThumbnailBoxFit(result);
                          }
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.reactionsDisplaySize),
                        subtitle: Slider(
                          value: reactionsDisplayScale.value,
                          min: minReactionsDisplayScale,
                          max: maxReactionsDisplayScale,
                          label: reactionsDisplayScale.value.toStringAsFixed(3),
                          onChanged: (value) =>
                              reactionsDisplayScale.value = value,
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        t.aria.margin,
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withValues(alpha: 0.8),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.vertical),
                        subtitle: Slider(
                          value: noteVerticalPadding.value,
                          max: maxNoteVerticalPadding,
                          label: noteVerticalPadding.value.toStringAsFixed(1),
                          onChanged: (value) =>
                              noteVerticalPadding.value = value,
                          onChangeEnd: (value) => ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setNoteVerticalPadding(value),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            noteVerticalPadding.value =
                                defaultNoteVerticalPadding;
                            ref
                                .read(
                                  generalSettingsNotifierProvider.notifier,
                                )
                                .setNoteVerticalPadding(
                                  defaultNoteVerticalPadding,
                                );
                          },
                          icon: const Icon(Icons.refresh),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.horizontal),
                        subtitle: Slider(
                          value: noteHorizontalPadding.value,
                          min: minNoteHorizontalPadding,
                          max: maxNoteHorizontalPadding,
                          label: noteHorizontalPadding.value.toStringAsFixed(1),
                          onChanged: (value) =>
                              noteHorizontalPadding.value = value,
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
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        t.misskey.backgroundColor,
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withValues(alpha: 0.8),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.visibility_.public),
                        trailing: DecoratedBox(
                          decoration: BoxDecoration(
                            color: settings.publicNoteBackgroundColor,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: const SizedBox(width: 28.0, height: 28.0),
                        ),
                        onTap: () async {
                          final result = await showColorPickerDialog(
                            context,
                            settings.publicNoteBackgroundColor ??
                                Colors.transparent,
                            pickersEnabled: {
                              ColorPickerType.primary: false,
                              ColorPickerType.accent: false,
                              ColorPickerType.wheel: true,
                            },
                            enableOpacity: true,
                          );
                          await ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setPublicNoteBackgroundColor(
                                result != Colors.transparent ? result : null,
                              );
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.visibility_.home),
                        trailing: DecoratedBox(
                          decoration: BoxDecoration(
                            color: settings.homeNoteBackgroundColor,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: const SizedBox(width: 28.0, height: 28.0),
                        ),
                        onTap: () async {
                          final result = await showColorPickerDialog(
                            context,
                            settings.homeNoteBackgroundColor ??
                                Colors.transparent,
                            pickersEnabled: {
                              ColorPickerType.primary: false,
                              ColorPickerType.accent: false,
                              ColorPickerType.wheel: true,
                            },
                            enableOpacity: true,
                          );
                          await ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setHomeNoteBackgroundColor(
                                result != Colors.transparent ? result : null,
                              );
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.visibility_.followers),
                        trailing: DecoratedBox(
                          decoration: BoxDecoration(
                            color: settings.followersNoteBackgroundColor,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: const SizedBox(width: 28.0, height: 28.0),
                        ),
                        onTap: () async {
                          final result = await showColorPickerDialog(
                            context,
                            settings.followersNoteBackgroundColor ??
                                Colors.transparent,
                            pickersEnabled: {
                              ColorPickerType.primary: false,
                              ColorPickerType.accent: false,
                              ColorPickerType.wheel: true,
                            },
                            enableOpacity: true,
                          );
                          await ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setFollowersNoteBackgroundColor(
                                result != Colors.transparent ? result : null,
                              );
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: ListTile(
                        title: Text(t.misskey.visibility_.specified),
                        trailing: DecoratedBox(
                          decoration: BoxDecoration(
                            color: settings.specifiedNoteBackgroundColor,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: const SizedBox(width: 28.0, height: 28.0),
                        ),
                        onTap: () async {
                          final result = await showColorPickerDialog(
                            context,
                            settings.specifiedNoteBackgroundColor ??
                                Colors.transparent,
                            pickersEnabled: {
                              ColorPickerType.primary: false,
                              ColorPickerType.accent: false,
                              ColorPickerType.wheel: true,
                            },
                            enableOpacity: true,
                          );
                          await ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setSpecifiedNoteBackgroundColor(
                                result != Colors.transparent ? result : null,
                              );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            _NoteDisplayArea.preview => SingleChildScrollView(
                child: Center(
                  child: ProviderScope(
                    overrides: [
                      // ignore: scoped_providers_should_specify_dependencies
                      cacheManagerProvider
                          .overrideWithValue(AssetCacheManager()),
                    ],
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
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
                            reactionCount: 55,
                            reactions: defaultPinnedEmojis.asMap().map(
                                  (key, value) => MapEntry(value, key + 1),
                                ),
                            fileIds: [],
                            files: [],
                          ),
                        ),
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(8.0),
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
