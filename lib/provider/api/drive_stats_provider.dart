import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'drive_stats_provider.g.dart';

@riverpod
FutureOr<DriveResponse> driveStats(Ref ref, Account account) {
  return ref.watch(misskeyProvider(account)).drive.drive();
}
