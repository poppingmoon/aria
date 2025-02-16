import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/general_settings.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../dialog/radio_dialog.dart';
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
              child: SwitchListTile(
                title: Text(t.misskey.dataSaver_.media_.title),
                subtitle: Text(t.misskey.dataSaver_.media_.description),
                value: settings.dataSaverMedia,
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                title: Text(t.aria.showTimelineTabBarAtBottom),
                value: settings.showTimelineTabBarAtBottom,
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
                onChanged: (value) => ref
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                t.aria.timelinesPageButtons,
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
              child: ExpansionTile(
                title: Text(t.aria.buttonTypes),
                childrenPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                children: [
                  ...settings.timelinesPageButtonTypes.mapIndexed(
                    (index, type) => ListTile(
                      leading: type != null
                          ? Icon(
                              switch (type) {
                                TimelinesPageButtonType.announcements =>
                                  Icons.campaign,
                                TimelinesPageButtonType.antennas =>
                                  Icons.settings_input_antenna,
                                TimelinesPageButtonType.channels => Icons.tv,
                                TimelinesPageButtonType.clips =>
                                  Icons.attach_file,
                                TimelinesPageButtonType.drive => Icons.cloud,
                                TimelinesPageButtonType.explore => Icons.tag,
                                TimelinesPageButtonType.favorites =>
                                  Icons.star_rounded,
                                TimelinesPageButtonType.gallery =>
                                  Icons.collections,
                                TimelinesPageButtonType.games => Icons.games,
                                TimelinesPageButtonType.home => Icons.home,
                                TimelinesPageButtonType.instanceInfo =>
                                  Icons.dns,
                                TimelinesPageButtonType.lists => Icons.list,
                                TimelinesPageButtonType.lookup =>
                                  Icons.travel_explore,
                                TimelinesPageButtonType.menu => Icons.menu,
                                TimelinesPageButtonType.note => Icons.edit,
                                TimelinesPageButtonType.notifications =>
                                  Icons.notifications,
                                TimelinesPageButtonType.pages => Icons.article,
                                TimelinesPageButtonType.play =>
                                  Icons.play_arrow,
                                TimelinesPageButtonType.postForm =>
                                  Icons.keyboard,
                                TimelinesPageButtonType.profile => Icons.person,
                                TimelinesPageButtonType.reload => Icons.refresh,
                                TimelinesPageButtonType.search => Icons.search,
                                TimelinesPageButtonType.settings =>
                                  Icons.settings,
                              },
                            )
                          : const SizedBox.shrink(),
                      title:
                          _TimelinesPageButtonTypeNameWidget(buttonType: type),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (type != null)
                            IconButton(
                              onPressed: () => ref
                                  .read(
                                    generalSettingsNotifierProvider.notifier,
                                  )
                                  .setTimelinesPageButtonTypes(
                                    settings.timelinesPageButtonTypes
                                        .mapIndexed(
                                          (i, type) => i != index ? type : null,
                                        )
                                        .toList(),
                                  ),
                              icon: const Icon(Icons.close),
                            ),
                          IconButton(
                            onPressed: () => ref
                                .read(generalSettingsNotifierProvider.notifier)
                                .setTimelinesPageButtonTypes(
                                  settings.timelinesPageButtonTypes
                                      .whereIndexed((i, _) => i != index)
                                      .toList(),
                                ),
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                      onTap: () async {
                        final result = await showRadioDialog(
                          context,
                          values: TimelinesPageButtonType.values,
                          initialValue: type,
                          title: Text(t.aria.buttonTypes),
                          itemBuilder: (context, type) =>
                              _TimelinesPageButtonTypeNameWidget(
                            buttonType: type,
                          ),
                        );
                        if (result != null && result != type) {
                          await ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setTimelinesPageButtonTypes(
                                settings.timelinesPageButtonTypes
                                    .mapIndexed(
                                      (i, type) => i != index ? type : result,
                                    )
                                    .toList(),
                              );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  OutlinedButton.icon(
                    onPressed: () => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setTimelinesPageButtonTypes(
                      [...settings.timelinesPageButtonTypes, null],
                    ),
                    icon: const Icon(Icons.add),
                    label: Text(t.misskey.add),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setTimelinesPageButtonTypes(
                          defaultTimelinesPageButtonTypes,
                        ),
                    icon: const Icon(Icons.refresh),
                    label: Text(t.misskey.default_),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.showSmallButtons),
                value: settings.showSmallTimelinesPageButtons,
                onChanged: (value) => ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setShowSmallTimelinesPageButtons(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.aria.showSquaredButtons),
                value: settings.showSquaredTimelinesPageButtons,
                onChanged: (value) => ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setShowSquaredTimelinesPageButtons(value),
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
              ),
            ),
          ),
        ],
      ),
      selectedDestination: GeneralSettingsDestination.appearance,
    );
  }
}

class _TimelinesPageButtonTypeNameWidget extends StatelessWidget {
  const _TimelinesPageButtonTypeNameWidget({this.buttonType});

  final TimelinesPageButtonType? buttonType;

  @override
  Widget build(BuildContext context) {
    return Text(
      switch (buttonType) {
        TimelinesPageButtonType.announcements => t.misskey.announcements,
        TimelinesPageButtonType.antennas => t.misskey.antennas,
        TimelinesPageButtonType.channels => t.misskey.channel,
        TimelinesPageButtonType.clips => t.misskey.clips,
        TimelinesPageButtonType.drive => t.misskey.drive,
        TimelinesPageButtonType.explore => t.misskey.explore,
        TimelinesPageButtonType.favorites => t.misskey.favorites,
        TimelinesPageButtonType.gallery => t.misskey.gallery,
        TimelinesPageButtonType.games => 'Misskey Games',
        TimelinesPageButtonType.home => t.misskey.home,
        TimelinesPageButtonType.instanceInfo => t.misskey.instanceInfo,
        TimelinesPageButtonType.lists => t.misskey.lists,
        TimelinesPageButtonType.lookup => t.misskey.lookup,
        TimelinesPageButtonType.menu => t.misskey.menu,
        TimelinesPageButtonType.note => t.misskey.note,
        TimelinesPageButtonType.notifications => t.misskey.notifications,
        TimelinesPageButtonType.pages => t.misskey.pages,
        TimelinesPageButtonType.play => 'Play',
        TimelinesPageButtonType.postForm => t.misskey.widgets_.postForm,
        TimelinesPageButtonType.profile => t.misskey.profile,
        TimelinesPageButtonType.reload => t.misskey.reload,
        TimelinesPageButtonType.search => t.misskey.search,
        TimelinesPageButtonType.settings => t.misskey.settings,
        null => t.misskey.notSet,
      },
    );
  }
}
