import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../model/account.dart';
import '../provider/api/user_notifier_provider.dart';

Future<void> openUserAsGuest(WidgetRef ref, UserDetailed user) async {
  final remoteUrl = user.uri ?? user.url;
  if (remoteUrl == null) return;
  final guest = Account(host: remoteUrl.host);
  final userAsLocal = await ref.read(
    userNotifierProvider(guest, username: user.username).future,
  );
  if (!ref.context.mounted) return;
  await ref.context.push('/$guest/users/${userAsLocal.id}');
}
