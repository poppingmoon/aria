import 'package:collection/collection.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_servers_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<JoinMisskeyInstanceInfo>> misskeyServers(Ref ref) async {
  final response = await JoinMisskey(
    host: 'instanceapp.misskey.page',
  ).instances();
  return response.instancesInfos.sortedByCompare(
    (server) => server.nodeInfo?.usage?.users?.total ?? 0,
    (a, b) => b.compareTo(a),
  );
}
