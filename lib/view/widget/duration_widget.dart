import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';

class const DurationWidget({super.key, required final Duration duration})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      [
        if (duration.inDays > 0) '${duration.inDays}${t.misskey.time_.day}',
        if (duration.inHours > 0 && duration.inHours % 24 > 0)
          '${duration.inHours % 24}${t.misskey.time_.hour}',
        if (duration.inMinutes > 0 && duration.inMinutes % 60 > 0)
          '${duration.inMinutes % 60}${t.misskey.time_.minute}',
        if (duration.inSeconds % 60 > 0)
          '${duration.inSeconds % 60}${t.misskey.time_.second}',
      ].join(' '),
    );
  }
}
