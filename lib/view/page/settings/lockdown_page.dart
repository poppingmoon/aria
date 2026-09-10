import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/pick_date_time.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/duration_picker_dialog.dart';
import '../../widget/duration_widget.dart';
import '../../widget/time_widget.dart';

class const LockdownPage({super.key, required final Account account})
    extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.lockdown)),
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
                  title: Text(
                    t.misskey.accountSettings_.requireSigninToViewContents,
                  ),
                  subtitle: Text(
                    t
                        .misskey
                        .accountSettings_
                        .requireSigninToViewContentsDescription1,
                  ),
                  value: i?.requireSigninToViewContents ?? false,
                  onChanged: i != null
                      ? (value) async {
                          if (value) {
                            final confirmed = await confirm(
                              context,
                              icon: const Icon(Icons.warning_amber),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                spacing: 8.0,
                                children: [
                                  const _RequireSigninDescription(),
                                  Text(t.misskey.acknowledgeNotesAndEnable),
                                ],
                              ),
                            );
                            if (!confirmed || !context.mounted) return;
                          }
                          await futureWithDialog(
                            context,
                            ref
                                .read(iNotifierProvider(account).notifier)
                                .setRequireSigninToViewContents(value),
                          );
                        }
                      : null,
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
                  title: Text(
                    t.misskey.accountSettings_.makeNotesFollowersOnlyBefore,
                  ),
                  subtitle: _HideBeforeWidget(
                    hideBefore: i?.makeNotesFollowersOnlyBefore,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: i != null
                      ? () async {
                          final result = await showDialog<(HideBefore?,)>(
                            context: context,
                            builder: (context) => _LockdownDialog(
                              initialValue: i.makeNotesFollowersOnlyBefore,
                              titleText: t
                                  .misskey
                                  .accountSettings_
                                  .makeNotesFollowersOnlyBefore,
                            ),
                          );
                          if (!context.mounted) return;
                          if (result != null) {
                            await futureWithDialog(
                              context,
                              ref
                                  .read(iNotifierProvider(account).notifier)
                                  .setMakeNotesFollowersOnlyBefore(result.$1),
                            );
                          }
                        }
                      : null,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.misskey.accountSettings_.makeNotesHiddenBefore),
                  subtitle: _HideBeforeWidget(
                    hideBefore: i?.makeNotesHiddenBefore,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: i != null
                      ? () async {
                          final result = await showDialog<(HideBefore?,)>(
                            context: context,
                            builder: (context) => _LockdownDialog(
                              initialValue: i.makeNotesHiddenBefore,
                              titleText: t
                                  .misskey
                                  .accountSettings_
                                  .makeNotesHiddenBefore,
                            ),
                          );
                          if (!context.mounted) return;
                          if (result != null) {
                            await futureWithDialog(
                              context,
                              ref
                                  .read(iNotifierProvider(account).notifier)
                                  .setMakeNotesHiddenBefore(result.$1),
                            );
                          }
                        }
                      : null,
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
    );
  }
}

class const _RequireSigninDescription() extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(
      misskeyColorsProvider(Theme.brightnessOf(context)),
    );

    return Card.filled(
      margin: EdgeInsets.zero,
      color: colors.infoWarnBg,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          t.misskey.accountSettings_.requireSigninToViewContentsDescription2,
          style: TextStyle(color: colors.infoWarnFg),
        ),
      ),
    );
  }
}

class const _HideBeforeWidget({required final HideBefore? hideBefore})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return switch (hideBefore) {
      HideBeforeDuration(:final duration) => DurationWidget(
        duration: -duration,
        builder: (context, duration) => Text.rich(
          TextSpan(
            text: t.misskey.accountSettings_.notesHavePassedSpecifiedPeriod,
            children: [
              const TextSpan(text: ' ('),
              TextSpan(text: duration),
              const TextSpan(text: ')'),
            ],
          ),
        ),
      ),
      HideBeforeDateTime(:final date) => TimeWidget(
        time: date,
        builder: (context, absolute, _) => Text.rich(
          TextSpan(
            text: t.misskey.accountSettings_.notesOlderThanSpecifiedDateAndTime,
            children: [
              const TextSpan(text: ' ('),
              TextSpan(text: absolute),
              const TextSpan(text: ')'),
            ],
          ),
        ),
        absolute: true,
      ),
      null => Text(t.misskey.none),
    };
  }
}

class const _LockdownDialog({
  required final HideBefore? initialValue,
  required final String titleText,
}) extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isAbsolute = useState(switch (initialValue) {
      HideBeforeDuration() => false,
      HideBeforeDateTime() => true,
      null => null,
    });
    final duration = useState(switch (initialValue) {
      HideBeforeDuration(:final duration) => -duration,
      _ => null,
    });
    final date = useState(switch (initialValue) {
      HideBeforeDateTime(:final date) => date,
      _ => null,
    });
    final theme = Theme.of(context);

    return AlertDialog(
      title: Text(titleText),
      content: ListTileTheme(
        data: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          tileColor: theme.colorScheme.surface,
        ),
        child: Column(
          children: [
            DropdownButtonFormField<(bool?,)>(
              items: [
                DropdownMenuItem(value: (null,), child: Text(t.misskey.none)),
                DropdownMenuItem(
                  value: (false,),
                  child: Text(
                    t.misskey.accountSettings_.notesHavePassedSpecifiedPeriod,
                  ),
                ),
                DropdownMenuItem(
                  value: (true,),
                  child: Text(
                    t
                        .misskey
                        .accountSettings_
                        .notesOlderThanSpecifiedDateAndTime,
                  ),
                ),
              ],
              initialValue: (isAbsolute.value,),
              onChanged: (value) {
                if (value != null) {
                  isAbsolute.value = value.$1;
                  if (value.$1 ?? false) {
                    date.value ??= DateTime.now();
                  } else if (!(value.$1 ?? true)) {
                    duration.value ??= const Duration(days: 7);
                  }
                }
              },
              isExpanded: true,
            ),
            if (isAbsolute.value case final isAbsolute?) ...[
              const SizedBox(height: 8.0),
              if (isAbsolute)
                ListTile(
                  title: Text(t.misskey.poll_.deadlineDate),
                  subtitle: TimeWidget(
                    time: date.value,
                    absolute: true,
                    disableTooltip: true,
                  ),
                  onTap: () async {
                    final result = await pickDateTime(
                      context,
                      initialDate: date.value,
                    );
                    if (result != null) {
                      date.value = result;
                    }
                  },
                )
              else
                ListTile(
                  title: Text(t.misskey.poll_.duration),
                  subtitle: DurationWidget(
                    duration: duration.value ?? Duration.zero,
                  ),
                  onTap: () async {
                    final result = await showDurationPickerDialog(
                      context,
                      initialDuration: duration.value,
                    );
                    if (result != null) {
                      duration.value = result;
                    }
                  },
                ),
            ],
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          autofocus: true,
          onPressed: () {
            if (isAbsolute.value ?? false) {
              if (date.value case final date?) {
                context.pop((HideBeforeDateTime(date),));
                return;
              }
            } else if (!(isAbsolute.value ?? true)) {
              if (duration.value case final duration?) {
                context.pop((HideBeforeDuration(-duration),));
                return;
              }
            }
            context.pop((null,));
          },
          child: Text(t.misskey.ok),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.surfaceContainerLowest,
          ),
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
