import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'clip_provider.g.dart';

@riverpod
FutureOr<Clip> clip(ClipRef ref, Account account, String clipId) {
  return ref
      .read(misskeyProvider(account))
      .clips
      .show(ClipsShowRequest(clipId: clipId));
}
