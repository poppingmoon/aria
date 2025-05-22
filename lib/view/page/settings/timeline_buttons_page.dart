import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/general_settings.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../dialog/radio_dialog.dart';

class TimelineButtonsPage extends ConsumerWidget {
  const TimelineButtonsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsNotifierProvider);
    final isLargeScreen = MediaQuery.sizeOf(context).width > 1200.0;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(t.aria.timelinesPageButtons)),
      body: ListView(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                t.aria.buttonTypes,
                style: TextStyle(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: Card.filled(
                color: theme.colorScheme.surface,
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ...settings.timelinesPageButtonTypes.mapIndexed(
                      (index, type) => ListTile(
                        leading: _TimelinesPageButtonIcon(buttonType: type),
                        title: _TimelinesPageButtonTypeNameWidget(
                          buttonType: type,
                        ),
                        contentPadding: const EdgeInsetsDirectional.only(
                          start: 16.0,
                          end: 8.0,
                        ),
                        trailing: IconButtonTheme(
                          data: IconButtonThemeData(
                            style: IconButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              minimumSize: Size.zero,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (type != null)
                                IconButton(
                                  onPressed: () => ref
                                      .read(
                                        generalSettingsNotifierProvider
                                            .notifier,
                                      )
                                      .setTimelinesPageButtonTypes(
                                        settings.timelinesPageButtonTypes
                                            .mapIndexed(
                                              (i, type) =>
                                                  i != index ? type : null,
                                            )
                                            .toList(),
                                      ),
                                  icon: const Icon(Icons.close),
                                ),
                              IconButton(
                                onPressed: () => ref
                                    .read(
                                      generalSettingsNotifierProvider.notifier,
                                    )
                                    .setTimelinesPageButtonTypes(
                                      settings.timelinesPageButtonTypes
                                          .whereIndexed((i, _) => i != index)
                                          .toList(),
                                    ),
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
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
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: [
                        OutlinedButton.icon(
                          onPressed: () => ref
                              .read(generalSettingsNotifierProvider.notifier)
                              .setTimelinesPageButtonTypes([
                                ...settings.timelinesPageButtonTypes,
                                null,
                              ]),
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
                    const SizedBox(height: 4.0),
                  ],
                ),
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
          const SizedBox(height: 120.0),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: settings.timelinesPageButtonTypes
            .where(
              (type) => !isLargeScreen || type != TimelinesPageButtonType.menu,
            )
            .mapIndexed(
              (index, type) => _TimelinePageButton(
                buttonType: type,
                index: index,
                onPressed: () async {
                  final result = await showRadioDialog(
                    context,
                    values: TimelinesPageButtonType.values,
                    initialValue: type,
                    title: Text(t.aria.buttonTypes),
                    itemBuilder: (context, type) =>
                        _TimelinesPageButtonTypeNameWidget(buttonType: type),
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
            )
            .toList(),
      ),
      floatingActionButtonLocation: settings.showSmallTimelinesPageButtons
          ? FloatingActionButtonLocation.miniCenterFloat
          : FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _TimelinesPageButtonIcon extends StatelessWidget {
  const _TimelinesPageButtonIcon({this.buttonType});

  final TimelinesPageButtonType? buttonType;

  @override
  Widget build(BuildContext context) {
    if (buttonType case final buttonType?) {
      return Icon(switch (buttonType) {
        TimelinesPageButtonType.announcements => Icons.campaign,
        TimelinesPageButtonType.antennas => Icons.settings_input_antenna,
        TimelinesPageButtonType.channels => Icons.tv,
        TimelinesPageButtonType.chat => Icons.message,
        TimelinesPageButtonType.clips => Icons.attach_file,
        TimelinesPageButtonType.drive => Icons.cloud,
        TimelinesPageButtonType.explore => Icons.tag,
        TimelinesPageButtonType.favorites => Icons.star_rounded,
        TimelinesPageButtonType.gallery => Icons.collections,
        TimelinesPageButtonType.games => Icons.games,
        TimelinesPageButtonType.home => Icons.home,
        TimelinesPageButtonType.instanceInfo => Icons.dns,
        TimelinesPageButtonType.lists => Icons.list,
        TimelinesPageButtonType.lookup => Icons.travel_explore,
        TimelinesPageButtonType.menu => Icons.menu,
        TimelinesPageButtonType.note => Icons.edit,
        TimelinesPageButtonType.notifications => Icons.notifications,
        TimelinesPageButtonType.pages => Icons.article,
        TimelinesPageButtonType.play => Icons.play_arrow,
        TimelinesPageButtonType.postForm => Icons.keyboard,
        TimelinesPageButtonType.profile => Icons.person,
        TimelinesPageButtonType.reload => Icons.refresh,
        TimelinesPageButtonType.search => Icons.search,
        TimelinesPageButtonType.settings => Icons.settings,
      });
    } else {
      return const SizedBox.shrink();
    }
  }
}

class _TimelinesPageButtonTypeNameWidget extends StatelessWidget {
  const _TimelinesPageButtonTypeNameWidget({this.buttonType});

  final TimelinesPageButtonType? buttonType;

  @override
  Widget build(BuildContext context) {
    return Text(switch (buttonType) {
      TimelinesPageButtonType.announcements => t.misskey.announcements,
      TimelinesPageButtonType.antennas => t.misskey.antennas,
      TimelinesPageButtonType.channels => t.misskey.channel,
      TimelinesPageButtonType.chat => t.misskey.chat,
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
    });
  }
}

class _TimelinePageButton extends ConsumerWidget {
  const _TimelinePageButton({this.buttonType, this.index, this.onPressed});

  final TimelinesPageButtonType? buttonType;
  final int? index;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (mini, square) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.showSmallTimelinesPageButtons,
          settings.showSquaredTimelinesPageButtons,
        ),
      ),
    );
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    if (buttonType case final buttonType?) {
      return FloatingActionButton(
        heroTag: ValueKey('<_TimelineButtonsPageButton tag $index>'),
        foregroundColor: buttonType == TimelinesPageButtonType.note
            ? colors.fgOnAccent
            : colors.fg,
        backgroundColor: buttonType == TimelinesPageButtonType.note
            ? Colors.transparent
            : colors.panel,
        shape: square ? null : const CircleBorder(),
        mini: mini,
        onPressed: onPressed,
        child: buttonType == TimelinesPageButtonType.note
            ? Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [colors.buttonGradateA, colors.buttonGradateB],
                  ),
                  borderRadius: BorderRadius.circular(
                    square
                        ? mini
                              ? 12.0
                              : 16.0
                        : 32.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(mini ? 8.0 : 16.0),
                  child: const Icon(Icons.edit),
                ),
              )
            : _TimelinesPageButtonIcon(buttonType: buttonType),
      );
    } else {
      return InkWell(
        onTap: onPressed,
        child: SizedBox.square(dimension: mini ? 40.0 : 56.0),
      );
    }
  }
}
