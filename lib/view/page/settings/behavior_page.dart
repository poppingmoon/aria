import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../i18n/strings.g.dart';
import '../../../provider/general_settings_notifier_provider.dart';

class BehaviorPage extends ConsumerWidget {
  const BehaviorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.behavior)),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text(t.misskey.enableInfiniteScroll),
            value: settings.enableInfiniteScroll,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setEnableInfiniteScroll(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.keepScreenOn),
            value: settings.keepScreenOn,
            onChanged: (value) {
              ref
                  .read(generalSettingsNotifierProvider.notifier)
                  .setKeepScreenOn(value);
              WakelockPlus.toggle(enable: value);
            },
          ),
          SwitchListTile(
            title: Text(t.misskey.enableHorizontalSwipe),
            value: settings.enableHorizontalSwipe,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setEnableHorizontalSwipe(value),
          ),
          SwitchListTile(
            title: Text(t.aria.openSensitiveMediaOnDoubleTap),
            value: settings.openSensitiveMediaOnDoubleTap,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setOpenSensitiveMediaOnDoubleTap(value),
          ),
          SwitchListTile(
            title: Text(t.aria.expandNoteOnTap),
            value: settings.expandNoteOnTap,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setExpandNoteOnTap(value),
          ),
          SwitchListTile(
            title: Text(t.aria.expandNoteOnDoubleTap),
            value: settings.expandNoteOnDoubleTap,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setExpandNoteOnDoubleTap(value),
          ),
          SwitchListTile(
            title: Text(t.aria.confirmBeforePost),
            value: settings.confirmBeforePost,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setConfirmBeforePost(value),
          ),
          SwitchListTile(
            title: Text(t.aria.confirmBeforeReact),
            value: settings.confirmBeforeReact,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setConfirmBeforeReact(value),
          ),
          SwitchListTile(
            title: Text(t.aria.confirmBeforeFollow),
            value: settings.confirmBeforeFollow,
            onChanged: (value) => ref
                .read(generalSettingsNotifierProvider.notifier)
                .setConfirmBeforeFollow(value),
          ),
        ],
      ),
    );
  }
}
