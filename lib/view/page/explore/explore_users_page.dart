import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import 'explore_users.dart';

class const ExploreUsersPage({
  super.key,
  required final Account account,
  final String? host,
}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.users)),
      body: ExploreUsers(account: account, host: host),
    );
  }
}
