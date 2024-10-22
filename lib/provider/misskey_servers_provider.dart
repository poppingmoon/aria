import 'dart:async';

import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_servers_provider.g.dart';

@riverpod
FutureOr<List<JoinMisskeyInstanceInfo>> misskeyServers(Ref ref) async {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() => timer?.cancel());
  try {
    final response =
        await JoinMisskey(host: 'instanceapp.misskey.page').instances();
    return response.instancesInfos.sortedByCompare(
      (server) => server.nodeInfo?.usage?.users?.total ?? 0,
      (a, b) => b.compareTo(a),
    );
  } catch (_) {
    timer?.cancel();
    link.close();
    rethrow;
  }
}
