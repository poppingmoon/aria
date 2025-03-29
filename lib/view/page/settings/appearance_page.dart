import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../widget/general_settings_scaffold.dart';

class AppearancePage extends HookConsumerWidget {
  const AppearancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsNotifierProvider);

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.appearance)),
      body: ListView(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                t.misskey.dataSaver,
                style: TextStyle(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.8),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.dataSaver_.media_.title),
                subtitle: Text(t.misskey.dataSaver_.media_.description),
                value: settings.dataSaverMedia,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setDataSaverMedia(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.dataSaver_.avatar_.title),
                subtitle: Text(t.misskey.dataSaver_.avatar_.description),
                value: settings.dataSaverAvatar,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setDataSaverAvatar(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.dataSaver_.urlPreview_.title),
                subtitle: Text(t.misskey.dataSaver_.urlPreview_.description),
                value: settings.dataSaverUrlPreview,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setDataSaverUrlPreview(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.disableDataSaverWhenOnWifi),
                value: settings.disableDataSaverWhenOnWifi,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setDisableDataSaverWhenOnWifi(value),
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(width: maxContentWidth, child: Divider()),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.reduceUiAnimation),
                value: settings.reduceAnimation,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setReduceAnimation(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.disableShowingAnimatedImages),
                value: settings.disableShowingAnimatedImages,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setDisableShowingAnimatedImages(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.enableEmojiFadeIn),
                value: settings.enableEmojiFadeIn,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setEnableEmojiFadeIn(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.forceShowAds),
                value: settings.forceShowAds,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setForceShowAds(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.useGroupedNotifications),
                value: settings.useGroupedNotifications,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setUseGroupedNotifications(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.showOnlineStatus),
                value: settings.showOnlineStatus,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setShowOnlineStatus(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.showTimelineTabBarAtBottom),
                value: settings.showTimelineTabBarAtBottom,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setShowTimelineTabBarAtBottom(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.showMenuButtonInTabBar),
                value: settings.showMenuButtonInTabBar,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setShowMenuButtonInTabBar(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.showTabHeaderInOneLine),
                value: settings.showTabHeaderInOneLine,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setShowTabHeaderInOneLine(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.alwaysShowTabHeader),
                value: settings.alwaysShowTabHeader,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setAlwaysShowTabHeader(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.showTimelineLastViewedAt),
                value: settings.showTimelineLastViewedAt,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setShowTimelineLastViewedAt(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.showPopupOnNewNote),
                value: settings.showPopupOnNewNote,
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setShowPopupOnNewNote(value),
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(width: maxContentWidth, child: Divider()),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                title: Text(t.aria.timelinesPageButtons),
                trailing: const Icon(Icons.navigate_next),
                onTap: () => context.push('/settings/appearance/buttons'),
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(width: maxContentWidth, child: Divider()),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.vibrateNote),
                value: settings.vibrateNote,
                onChanged:
                    (value) => ref
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
                onChanged:
                    (value) => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setVibrateNotification(value),
              ),
            ),
          ),
        ],
      ),
      selectedDestination: GeneralSettingsDestination.appearance,
    );
  }
}
