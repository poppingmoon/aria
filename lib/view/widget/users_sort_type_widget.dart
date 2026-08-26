import 'package:flutter/widgets.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class const UsersSortTypeWidget({super.key, required final UsersSortType sort})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(switch (sort) {
      UsersSortType.followerAscendant =>
        '${t.misskey.followersCount} (${t.misskey.ascendingOrder})',
      UsersSortType.followerDescendant =>
        '${t.misskey.followersCount} (${t.misskey.descendingOrder})',
      UsersSortType.createdAtAscendant =>
        '${t.misskey.createdAt} (${t.misskey.ascendingOrder})',
      UsersSortType.createdAtDescendant =>
        '${t.misskey.createdAt} (${t.misskey.descendingOrder})',
      UsersSortType.updateAtAscendant =>
        '${t.misskey.updatedAt} (${t.misskey.ascendingOrder})',
      UsersSortType.updateAtDescendant =>
        '${t.misskey.updatedAt} (${t.misskey.descendingOrder})',
    });
  }
}
