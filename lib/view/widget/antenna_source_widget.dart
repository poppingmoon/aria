import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class const AntennaSourceWidget({
  super.key,
  required final AntennaSource? antennaSource,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(switch (antennaSource) {
      AntennaSource.home => t.misskey.antennaSources_.homeTimeline,
      AntennaSource.all => t.misskey.antennaSources_.all,
      AntennaSource.users => t.misskey.antennaSources_.users,
      AntennaSource.usersBlackList => t.misskey.antennaSources_.userBlacklist,
      AntennaSource.list => t.misskey.antennaSources_.userList,
      null => '???',
    });
  }
}
