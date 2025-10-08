import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'reversi_invitations_provider.g.dart';

@riverpod
FutureOr<List<User>> reversiInvitations(Ref ref, Account account) async {
  final response = await ref
      .watch(misskeyProvider(account))
      .reversi
      .invitations();
  return response.toList();
}
