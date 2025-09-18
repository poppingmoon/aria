import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/general_settings.dart';
import '../../../provider/cache_size_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/pretty_bytes.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/general_settings_scaffold.dart';

class BehaviorPage extends ConsumerWidget {
  const BehaviorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsNotifierProvider);
    final cacheSize = ref.watch(cacheSizeProvider);

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.behavior)),
      body: ListTileTheme(
        data: ListTileThemeData(
          tileColor: Theme.of(context).colorScheme.surface,
        ),
        child: ListView(
          children: [
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.misskey.enableInfiniteScroll),
                  value: settings.enableInfiniteScroll,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setEnableInfiniteScroll(value),
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
                  title: Text(t.misskey.keepScreenOn),
                  value: settings.keepScreenOn,
                  onChanged: (value) {
                    ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setKeepScreenOn(value);
                    WakelockPlus.toggle(enable: value);
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.misskey.enableHorizontalSwipe),
                  value: settings.enableHorizontalSwipe,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setEnableHorizontalSwipe(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.aria.openSensitiveMediaOnDoubleTap),
                  value: settings.openSensitiveMediaOnDoubleTap,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setOpenSensitiveMediaOnDoubleTap(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.aria.noteTapAction),
                  subtitle: Text(switch (settings.noteTapAction) {
                    NoteActionType.none => t.misskey.doNothing,
                    NoteActionType.expand => t.aria.expandNote,
                    NoteActionType.menu => t.aria.openMenu,
                    NoteActionType.reaction => t.misskey.doReaction,
                  }),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.aria.noteTapAction),
                      values: NoteActionType.values,
                      initialValue: settings.noteTapAction,
                      titleBuilder: (context, value) => Text(switch (value) {
                        NoteActionType.none => t.misskey.doNothing,
                        NoteActionType.expand => t.aria.expandNote,
                        NoteActionType.menu => t.aria.openMenu,
                        NoteActionType.reaction => t.misskey.doReaction,
                      }),
                    );
                    if (result != null) {
                      await ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setNoteTapAction(result);
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
                  title: Text(t.aria.noteDoubleTapAction),
                  subtitle: Text(switch (settings.noteDoubleTapAction) {
                    NoteActionType.none => t.misskey.doNothing,
                    NoteActionType.expand => t.aria.expandNote,
                    NoteActionType.menu => t.aria.openMenu,
                    NoteActionType.reaction => t.misskey.doReaction,
                  }),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.aria.noteDoubleTapAction),
                      values: NoteActionType.values,
                      initialValue: settings.noteDoubleTapAction,
                      titleBuilder: (context, value) => Text(switch (value) {
                        NoteActionType.none => t.misskey.doNothing,
                        NoteActionType.expand => t.aria.expandNote,
                        NoteActionType.menu => t.aria.openMenu,
                        NoteActionType.reaction => t.misskey.doReaction,
                      }),
                    );
                    if (result != null) {
                      await ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setNoteDoubleTapAction(result);
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
                  title: Text(t.aria.noteLongPressAction),
                  subtitle: Text(switch (settings.noteLongPressAction) {
                    NoteActionType.none => t.misskey.doNothing,
                    NoteActionType.expand => t.aria.expandNote,
                    NoteActionType.menu => t.aria.openMenu,
                    NoteActionType.reaction => t.misskey.doReaction,
                  }),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.aria.noteLongPressAction),
                      values: NoteActionType.values,
                      initialValue: settings.noteLongPressAction,
                      titleBuilder: (context, value) => Text(switch (value) {
                        NoteActionType.none => t.misskey.doNothing,
                        NoteActionType.expand => t.aria.expandNote,
                        NoteActionType.menu => t.aria.openMenu,
                        NoteActionType.reaction => t.misskey.doReaction,
                      }),
                    );
                    if (result != null) {
                      await ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setNoteLongPressAction(result);
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
                  title: Text(t.aria.confirmBeforePost),
                  value: settings.confirmBeforePost,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setConfirmBeforePost(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.aria.confirmBeforeRenote),
                  value: settings.confirmBeforeRenote,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setConfirmBeforeRenote(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.aria.confirmBeforeReact),
                  value: settings.confirmBeforeReact,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setConfirmBeforeReact(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.aria.confirmBeforeFollow),
                  value: settings.confirmBeforeFollow,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setConfirmBeforeFollow(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.misskey.confirmWhenRevealingSensitiveMedia),
                  value: settings.confirmWhenRevealingSensitiveMedia,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setConfirmWhenRevealingSensitiveMedia(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.aria.webBrowser),
                  subtitle: Text(switch (settings.launchMode) {
                    LaunchMode.inAppBrowserView => t.aria.openInInternalBrowser,
                    LaunchMode.externalApplication =>
                      t.aria.openInExternalBrowser,
                    _ => '',
                  }),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.aria.webBrowser),
                      values: [
                        LaunchMode.inAppBrowserView,
                        LaunchMode.externalApplication,
                      ],
                      initialValue: settings.launchMode,
                      titleBuilder: (context, value) => Text(switch (value) {
                        LaunchMode.inAppBrowserView =>
                          t.aria.openInInternalBrowser,
                        LaunchMode.externalApplication =>
                          t.aria.openInExternalBrowser,
                        _ => '',
                      }),
                    );
                    if (result != null) {
                      await ref
                          .read(generalSettingsNotifierProvider.notifier)
                          .setLaunchMode(result);
                    }
                  },
                ),
              ),
            ),
            if (defaultTargetPlatform
                case TargetPlatform.android || TargetPlatform.iOS)
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: SwitchListTile(
                    title: Text(t.aria.enableSpellCheck),
                    value: settings.enableSpellCheck,
                    onChanged: (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setEnableSpellCheck(value),
                  ),
                ),
              ),
            if (defaultTargetPlatform == TargetPlatform.android)
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: FutureBuilder(
                    future: DeviceInfoPlugin().androidInfo,
                    builder: (context, snapshot) => SwitchListTile(
                      title: Text(t.aria.enablePredictiveBack),
                      value: settings.enablePredictiveBack,
                      onChanged: switch (snapshot.data?.version.sdkInt) {
                        final sdk? when sdk >= 34 =>
                          (value) => ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setEnablePredictiveBack(value),
                        _ => null,
                      },
                    ),
                  ),
                ),
              ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.misskey.clearCache),
                  subtitle: Text(switch (cacheSize) {
                    AsyncValue(valueOrNull: final cacheSize?) => prettyBytes(
                      cacheSize,
                    ),
                    AsyncValue(error: final _?) => t.misskey.unknown,
                    _ => t.aria.calculating,
                  }),
                  trailing: const Icon(Icons.navigate_next),
                  enabled: cacheSize.valueOrNull != 0,
                  onTap: () async {
                    await futureWithDialog(
                      context,
                      getApplicationCacheDirectory().then(
                        (cacheDir) => Future.wait(
                          cacheDir.listSync().map(
                            (e) => e.delete(recursive: true),
                          ),
                        ),
                      ),
                    );
                    ref.invalidate(cacheSizeProvider);
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
      selectedDestination: GeneralSettingsDestination.behavior,
    );
  }
}
