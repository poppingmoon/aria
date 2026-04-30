import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../extension/sound_type_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/sound_settings.dart';
import '../../../provider/asset_audio_player_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../provider/sound_settings_notifier_provider.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../widget/general_settings_scaffold.dart';

class SoundsPage extends HookConsumerWidget {
  const SoundsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(soundSettingsNotifierProvider);
    final masterVolume = useState(settings.masterVolume);
    final theme = Theme.of(context);

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.sounds)),
      body: ListTileTheme(
        data: ListTileThemeData(tileColor: theme.colorScheme.surface),
        child: ListView(
          children: [
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.misskey.notUseSound),
                  value: settings.notUseSound,
                  onChanged: (value) => ref
                      .read(soundSettingsNotifierProvider.notifier)
                      .setNotUseSound(value),
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
                  title: Text(t.misskey.masterVolume),
                  subtitle: Slider(
                    value: masterVolume.value,
                    label: '${(masterVolume.value * 100).toStringAsFixed(0)}%',
                    onChanged: (value) => masterVolume.value = value,
                    onChangeEnd: (value) => ref
                        .read(soundSettingsNotifierProvider.notifier)
                        .setMasterVolume(value),
                  ),
                  trailing: IconButton(
                    tooltip: t.misskey.reset,
                    onPressed: masterVolume.value != defaultMasterVolume
                        ? () {
                            masterVolume.value = defaultMasterVolume;
                            ref
                                .read(soundSettingsNotifierProvider.notifier)
                                .setMasterVolume(defaultMasterVolume);
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
                  t.misskey.sounds,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            for (final type in OperationType.values) ...[
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: _SoundSettingsWidget(operationType: type),
                ),
              ),
              const SizedBox(height: 8.0),
            ],
          ],
        ),
      ),
      selectedDestination: GeneralSettingsDestination.sounds,
    );
  }
}

class _SoundSettingsWidget extends HookConsumerWidget {
  const _SoundSettingsWidget({required this.operationType});

  final OperationType operationType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final (notUseSound, masterVolume, sound) = ref.watch(
      soundSettingsNotifierProvider.select(
        (settings) => (
          settings.notUseSound,
          settings.masterVolume,
          settings.sounds[operationType],
        ),
      ),
    );
    final volume = useState(sound?.volume ?? 1.0);
    final effectiveVolume = masterVolume * volume.value;
    if (sound?.type case final soundType?) {
      ref.listen(
        assetAudioPlayerNotifierProvider(soundType.asset, effectiveVolume),
        (_, _) {},
      );
    }
    final colors = ref.watch(
      misskeyColorsProvider(Theme.brightnessOf(context)),
    );

    return ExpansionTile(
      title: Text(switch (operationType) {
        OperationType.noteMy => t.misskey.sfx_.noteMy,
        OperationType.note => t.misskey.sfx_.note,
        OperationType.notification => t.misskey.sfx_.notification,
        OperationType.reaction => t.misskey.sfx_.reaction,
        OperationType.chatMessage => t.misskey.sfx_.chatMessage,
        OperationType.tabSwitch => t.aria.tabSwitching,
        OperationType.reloadHold => '${t.misskey.reload} (${t.aria.trigger})',
        OperationType.reload => t.misskey.reload,
      }),
      initiallyExpanded: !notUseSound,
      backgroundColor: colors.panel,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      children: [
        ListTile(
          title: Text(t.misskey.sound),
          subtitle: Text(sound?.type?.name ?? t.misskey.none),
          trailing: switch (sound?.type) {
            final soundType? when !notUseSound => IconButton(
              style: IconButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size.zero,
              ),
              tooltip: t.misskey.listen,
              onPressed: () {
                ref
                    .read(
                      assetAudioPlayerNotifierProvider(
                        soundType.asset,
                        effectiveVolume,
                      ).notifier,
                    )
                    .play();
                if (sound?.vibrate ?? false) {
                  HapticFeedback.lightImpact();
                }
              },
              icon: const Icon(Icons.play_arrow),
            ),
            _ => const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.navigate_next),
            ),
          },
          onTap: () async {
            final result = await showDialog<(SoundType?,)>(
              context: context,
              builder: (context) => _SoundDialog(
                initialValue: sound?.type,
                volume: effectiveVolume,
              ),
            );
            if (result != null) {
              await ref
                  .read(soundSettingsNotifierProvider.notifier)
                  .setSoundType(operationType, result.$1);
            }
          },
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          enabled: !notUseSound,
        ),
        ListTile(
          title: Text(t.misskey.volume),
          subtitle: Slider(
            value: volume.value,
            label: '${(volume.value * 100).toStringAsFixed(0)}%',
            onChanged: !notUseSound ? (value) => volume.value = value : null,
            onChangeEnd: (value) => ref
                .read(soundSettingsNotifierProvider.notifier)
                .setVolume(operationType, value),
          ),
          enabled: !notUseSound,
        ),
        SwitchListTile(
          title: Text(t.aria.vibration),
          value: sound?.vibrate ?? false,
          onChanged: (value) => ref
              .read(soundSettingsNotifierProvider.notifier)
              .setVibrate(operationType, value),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            spacing: 8.0,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: colors.error,
                  backgroundColor: colors.buttonBg,
                  iconColor: colors.error,
                ),
                onPressed: switch (defaultSounds[operationType]) {
                  final defaultSound? when sound != defaultSound => () async {
                    final confirmed = await confirm(
                      context,
                      message: t.misskey.resetAreYouSure,
                    );
                    if (confirmed) {
                      await ref
                          .read(soundSettingsNotifierProvider.notifier)
                          .setSound(operationType, defaultSound);
                      volume.value = defaultSound.volume;
                    }
                  },
                  _ => null,
                },
                icon: const Icon(Icons.refresh),
                label: Text(t.misskey.default_),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SoundDialog extends ConsumerWidget {
  const _SoundDialog({required this.initialValue, required this.volume});

  final SoundType? initialValue;
  final double volume;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleDialog(
      title: Text(t.misskey.sound),
      children: [
        ListTile(
          leading: const Icon(Icons.music_off),
          title: Text(t.misskey.none),
          onTap: () => context.pop((null,)),
          selected: initialValue == null,
          tileColor: Colors.transparent,
        ),
        ...SoundType.values.map(
          (type) => ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(type.name),
            trailing: IconButton(
              onPressed: () async {
                final sub = ref.listenManual(
                  assetAudioPlayerNotifierProvider(type.asset, volume),
                  (_, _) {},
                );
                await ref
                    .read(
                      assetAudioPlayerNotifierProvider(
                        type.asset,
                        volume,
                      ).notifier,
                    )
                    .play();
                sub.close();
              },
              icon: const Icon(Icons.play_arrow),
            ),
            onTap: () => context.pop((type,)),
            selected: type == initialValue,
            tileColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
