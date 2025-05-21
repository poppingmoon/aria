import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/user_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/pick_date_time.dart';
import '../widget/duration_widget.dart';
import '../widget/time_widget.dart';
import 'duration_picker_dialog.dart';

enum _MutePeriod { indefinite, at, after }

class MuteDialog extends HookConsumerWidget {
  const MuteDialog({super.key, required this.account, required this.userId});

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final period = useState(_MutePeriod.indefinite);
    final expiresAt = useState(DateTime.now());
    final expiresAfter = useState(const Duration(minutes: 10));
    final theme = Theme.of(context);

    return AlertDialog(
      title: Text(t.misskey.mute),
      content: ListTileTheme(
        data: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          tileColor: theme.colorScheme.surface,
        ),
        child: Column(
          children: [
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: t.misskey.mutePeriod),
              items:
                  _MutePeriod.values
                      .map(
                        (value) => DropdownMenuItem(
                          value: value,
                          child: Text(switch (value) {
                            _MutePeriod.indefinite => t.misskey.indefinitely,
                            _MutePeriod.at => t.misskey.poll_.at,
                            _MutePeriod.after => t.misskey.poll_.after,
                          }),
                        ),
                      )
                      .toList(),
              value: period.value,
              onChanged: (v) {
                if (v != null) {
                  period.value = v;
                  if (v == _MutePeriod.at) {
                    final now = DateTime.now();
                    if (expiresAt.value.isBefore(now)) {
                      expiresAt.value = DateTime(
                        now.year,
                        now.month,
                        now.day + 1,
                      );
                    }
                  }
                }
              },
              isExpanded: true,
            ),
            if (period.value == _MutePeriod.at) ...[
              const SizedBox(height: 8.0),
              ListTile(
                title: Text(t.misskey.poll_.deadlineDate),
                subtitle: TimeWidget(time: expiresAt.value, detailed: true),
                onTap: () async {
                  final result = await pickDateTime(
                    context,
                    initialDate: expiresAt.value,
                    firstDate: DateTime.now(),
                  );
                  if (result != null) {
                    expiresAt.value = result;
                  }
                },
              ),
            ],
            if (period.value == _MutePeriod.after) ...[
              const SizedBox(height: 8.0),
              ListTile(
                title: Text(t.misskey.poll_.duration),
                subtitle: DurationWidget(duration: expiresAfter.value),
                onTap: () async {
                  final result = await showDurationPickerDialog(
                    context,
                    initialDuration: expiresAfter.value,
                  );
                  if (result != null) {
                    expiresAfter.value = result;
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
          onPressed: () async {
            final result = await futureWithDialog(
              context,
              ref
                  .read(userNotifierProvider(account, userId: userId).notifier)
                  .mute(switch (period.value) {
                    _MutePeriod.indefinite => null,
                    _MutePeriod.at => expiresAt.value,
                    _MutePeriod.after => DateTime.now().add(expiresAfter.value),
                  })
                  .then((_) => true),
            );
            if (!context.mounted) return;
            if (result != null) {
              context.pop();
            }
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
