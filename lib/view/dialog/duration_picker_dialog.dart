import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings.g.dart';

Future<Duration?> showDurationPickerDialog(
  BuildContext context, {
  Duration? initialDuration,
}) {
  return showDialog(
    context: context,
    builder:
        (context) => DurationPickerDialog(initialDuration: initialDuration),
  );
}

class DurationPickerDialog extends HookWidget {
  const DurationPickerDialog({super.key, this.initialDuration});

  final Duration? initialDuration;

  @override
  Widget build(BuildContext context) {
    final daysController = useTextEditingController(
      text: (initialDuration?.inDays ?? 0).toString(),
    );
    final hoursController = useTextEditingController(
      text: ((initialDuration?.inHours ?? 0) % 24).toString(),
    );
    final minutesController = useTextEditingController(
      text: ((initialDuration?.inMinutes ?? 0) % 60).toString(),
    );
    final secondsController = useTextEditingController(
      text: ((initialDuration?.inSeconds ?? 0) % 60).toString(),
    );

    return AlertDialog(
      title: Text(t.misskey.poll_.duration),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: daysController,
            decoration: InputDecoration(
              labelText: t.misskey.time_.day,
              enabledBorder: Theme.of(context).inputDecorationTheme.border,
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
          const SizedBox(height: 8.0),
          TextField(
            controller: hoursController,
            decoration: InputDecoration(
              labelText: t.misskey.time_.hour,
              enabledBorder: Theme.of(context).inputDecorationTheme.border,
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
          const SizedBox(height: 8.0),
          TextField(
            controller: minutesController,
            decoration: InputDecoration(
              labelText: t.misskey.time_.minute,
              enabledBorder: Theme.of(context).inputDecorationTheme.border,
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
          const SizedBox(height: 8.0),
          TextField(
            controller: secondsController,
            decoration: InputDecoration(
              labelText: t.misskey.time_.second,
              enabledBorder: Theme.of(context).inputDecorationTheme.border,
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            onSubmitted:
                (_) => context.pop(
                  Duration(
                    days: int.tryParse(daysController.text) ?? 0,
                    hours: int.tryParse(hoursController.text) ?? 0,
                    minutes: int.tryParse(minutesController.text) ?? 0,
                    seconds: int.tryParse(secondsController.text) ?? 0,
                  ),
                ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed:
              () => context.pop(
                Duration(
                  days: int.tryParse(daysController.text) ?? 0,
                  hours: int.tryParse(hoursController.text) ?? 0,
                  minutes: int.tryParse(minutesController.text) ?? 0,
                  seconds: int.tryParse(secondsController.text) ?? 0,
                ),
              ),
          child: Text(t.misskey.ok),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
    );
  }
}
