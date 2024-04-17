import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../provider/general_settings_notifier_provider.dart';

class AppearancePage extends HookConsumerWidget {
  const AppearancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.appearance)),
      body: ListView(
        children: [
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
