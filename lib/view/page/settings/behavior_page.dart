import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/general_settings.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../dialog/radio_dialog.dart';

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
          ListTile(
            title: Text(t.aria.noteTapAction),
            subtitle: Text(
              switch (settings.noteTapAction) {
                NoteActionType.none => t.misskey.doNothing,
                NoteActionType.expand => t.aria.expandNote,
                NoteActionType.menu => t.aria.openMenu,
                NoteActionType.reaction => t.misskey.doReaction,
              },
            ),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showRadioDialog(
                context,
                title: Text(t.aria.noteTapAction),
                values: NoteActionType.values,
                initialValue: settings.noteTapAction,
                itemBuilder: (context, value) => Text(
                  switch (value) {
                    NoteActionType.none => t.misskey.doNothing,
                    NoteActionType.expand => t.aria.expandNote,
                    NoteActionType.menu => t.aria.openMenu,
                    NoteActionType.reaction => t.misskey.doReaction,
                  },
                ),
              );
              if (result != null) {
                await ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setNoteTapAction(result);
              }
            },
          ),
          ListTile(
            title: Text(t.aria.noteDoubleTapAction),
            subtitle: Text(
              switch (settings.noteDoubleTapAction) {
                NoteActionType.none => t.misskey.doNothing,
                NoteActionType.expand => t.aria.expandNote,
                NoteActionType.menu => t.aria.openMenu,
                NoteActionType.reaction => t.misskey.doReaction,
              },
            ),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showRadioDialog(
                context,
                title: Text(t.aria.noteDoubleTapAction),
                values: NoteActionType.values,
                initialValue: settings.noteDoubleTapAction,
                itemBuilder: (context, value) => Text(
                  switch (value) {
                    NoteActionType.none => t.misskey.doNothing,
                    NoteActionType.expand => t.aria.expandNote,
                    NoteActionType.menu => t.aria.openMenu,
                    NoteActionType.reaction => t.misskey.doReaction,
                  },
                ),
              );
              if (result != null) {
                await ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setNoteDoubleTapAction(result);
              }
            },
          ),
          ListTile(
            title: Text(t.aria.noteLongPressAction),
            subtitle: Text(
              switch (settings.noteLongPressAction) {
                NoteActionType.none => t.misskey.doNothing,
                NoteActionType.expand => t.aria.expandNote,
                NoteActionType.menu => t.aria.openMenu,
                NoteActionType.reaction => t.misskey.doReaction,
              },
            ),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showRadioDialog(
                context,
                title: Text(t.aria.noteLongPressAction),
                values: NoteActionType.values,
                initialValue: settings.noteLongPressAction,
                itemBuilder: (context, value) => Text(
                  switch (value) {
                    NoteActionType.none => t.misskey.doNothing,
                    NoteActionType.expand => t.aria.expandNote,
                    NoteActionType.menu => t.aria.openMenu,
                    NoteActionType.reaction => t.misskey.doReaction,
                  },
                ),
              );
              if (result != null) {
                await ref
                    .read(generalSettingsNotifierProvider.notifier)
                    .setNoteLongPressAction(result);
              }
            },
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
