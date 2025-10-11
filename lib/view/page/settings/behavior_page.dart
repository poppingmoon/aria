import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/general_settings.dart';
import '../../../provider/cache_manager_provider.dart';
import '../../../provider/cache_size_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/pretty_bytes.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/general_settings_scaffold.dart';

double _minFlingFactorToSensitivity(double minFlingFactor) {
  return pow(maxTimelinesPageMinFlingFactor - minFlingFactor, 2).toDouble();
}

double _sensitivityToMinFlingFactor(double sensitivity) {
  return maxTimelinesPageMinFlingFactor - sqrt(sensitivity);
}

class BehaviorPage extends HookConsumerWidget {
  const BehaviorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsNotifierProvider);
    final cacheSize = ref.watch(cacheSizeProvider);
    final sqrtStiffness = useState(
      sqrt(
        clampDouble(
          settings.timelinesPageSpringStiffness,
          0.0,
          maxTimelinesPageSpringStiffness,
        ),
      ),
    );
    final sensitivity = useState(
      clampDouble(
        _minFlingFactorToSensitivity(settings.timelinesPageMinFlingFactor),
        0.0,
        _minFlingFactorToSensitivity(0.0),
      ),
    );

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
                  shape: switch (defaultTargetPlatform) {
                    TargetPlatform.android || TargetPlatform.iOS => null,
                    _ => const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(8.0),
                      ),
                    ),
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
                    shape: defaultTargetPlatform == TargetPlatform.iOS
                        ? const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(8.0),
                            ),
                          )
                        : null,
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
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 16.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  t.aria.tabSwitching,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
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
                child: ListTile(
                  title: Text(t.aria.springStiffness),
                  subtitle: Slider(
                    value: sqrtStiffness.value,
                    max: sqrt(maxTimelinesPageSpringStiffness),
                    label: pow(sqrtStiffness.value, 2).toStringAsFixed(1),
                    onChanged: settings.enableHorizontalSwipe
                        ? (value) => sqrtStiffness.value = value
                        : null,
                    onChangeEnd: (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setTimelinesPageSpringStiffness(
                          pow(value, 2).toDouble(),
                        ),
                  ),
                  trailing: IconButton(
                    onPressed: settings.enableHorizontalSwipe
                        ? () {
                            sqrtStiffness.value = sqrt(
                              defaultTimelinesPageSpringStiffness,
                            );
                            ref
                                .read(generalSettingsNotifierProvider.notifier)
                                .setTimelinesPageSpringStiffness(
                                  defaultTimelinesPageSpringStiffness,
                                );
                          }
                        : null,
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
                  title: Text(t.aria.swipeSensitivity),
                  subtitle: Slider(
                    value: sensitivity.value,
                    max: _minFlingFactorToSensitivity(0.0),
                    label: sqrt(sensitivity.value).toStringAsFixed(1),
                    onChanged: settings.enableHorizontalSwipe
                        ? (value) => sensitivity.value = value
                        : null,
                    onChangeEnd: (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setTimelinesPageMinFlingFactor(
                          _sensitivityToMinFlingFactor(value),
                        ),
                  ),
                  trailing: IconButton(
                    onPressed: settings.enableHorizontalSwipe
                        ? () {
                            sensitivity.value = _minFlingFactorToSensitivity(
                              defaultTimelinesPageMinFlingFactor,
                            );
                            ref
                                .read(generalSettingsNotifierProvider.notifier)
                                .setTimelinesPageMinFlingFactor(
                                  defaultTimelinesPageMinFlingFactor,
                                );
                          }
                        : null,
                    icon: const Icon(Icons.refresh),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  t.aria.vibration,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.aria.enableHapticFeedback),
                  value: settings.enableHapticFeedback,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setEnableHapticFeedback(value),
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
                  title: Text(t.aria.vibrateNote),
                  value: settings.vibrateNote,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setVibrateNote(value),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.aria.vibrateNotification),
                  value: settings.vibrateNotification,
                  onChanged: (value) => ref
                      .read(generalSettingsNotifierProvider.notifier)
                      .setVibrateNotification(value),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  t.aria.cache,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
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
                  onTap: () => futureWithDialog(
                    context,
                    Future(() async {
                      await ref.read(cacheManagerProvider).emptyCache();
                      final cacheDir = await getApplicationCacheDirectory();
                      await Future.wait(
                        cacheDir.listSync().map(
                          (e) => e.delete(recursive: true),
                        ),
                      );
                      ref.invalidate(cacheSizeProvider);
                    }),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
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
