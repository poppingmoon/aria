import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';

Future<Duration?> showDurationPickerDialog(
  BuildContext context, {
  Duration? initialDuration,
  Duration? minDuration = const Duration(seconds: 1),
}) {
  return showDialog(
    context: context,
    builder: (context) => DurationPickerDialog(
      initialDuration: initialDuration,
      minDuration: minDuration,
    ),
  );
}

class const DurationPickerDialog({
  super.key,
  final Duration? initialDuration,
  final Duration? minDuration = const Duration(seconds: 1),
}) extends HookWidget {
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
    final duration = useState(initialDuration ?? Duration.zero);
    useEffect(() {
      void callback() {
        duration.value = Duration(
          days: int.tryParse(daysController.text) ?? 0,
          hours: int.tryParse(hoursController.text) ?? 0,
          minutes: int.tryParse(minutesController.text) ?? 0,
          seconds: int.tryParse(secondsController.text) ?? 0,
        );
      }

      daysController.addListener(callback);
      hoursController.addListener(callback);
      minutesController.addListener(callback);
      secondsController.addListener(callback);
      return () {
        daysController.removeListener(callback);
        hoursController.removeListener(callback);
        minutesController.removeListener(callback);
        secondsController.removeListener(callback);
      };
    }, []);
    final theme = Theme.of(context);

    return AlertDialog(
      title: Text(t.misskey.poll_.duration),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: daysController,
            decoration: InputDecoration(
              labelText: t.misskey.time_.day,
              enabledBorder: theme.inputDecorationTheme.border,
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
              enabledBorder: theme.inputDecorationTheme.border,
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
              enabledBorder: theme.inputDecorationTheme.border,
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
              enabledBorder: theme.inputDecorationTheme.border,
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) {
              if (minDuration case final minDuration
                  when minDuration == null || minDuration <= duration.value) {
                context.pop(duration.value);
              }
            },
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: switch (minDuration) {
            final minDuration
                when minDuration == null || minDuration <= duration.value =>
              () => context.pop(),
            _ => null,
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
    );
  }
}
