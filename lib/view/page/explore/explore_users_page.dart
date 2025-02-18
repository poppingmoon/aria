import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import 'explore_users.dart';

class ExploreUsersPage extends ConsumerWidget {
  const ExploreUsersPage({super.key, required this.account, this.host});

  final Account account;
  final String? host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.users)),
      body: ExploreUsers(account: account, host: host),
    );
  }
}
