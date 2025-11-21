import 'package:collection/collection.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'misskey_servers_provider.dart';

part 'search_misskey_servers_provider.g.dart';

@riverpod
FutureOr<List<JoinMisskeyInstanceInfo>> searchMisskeyServers(
  Ref ref,
  String query,
) async {
  final servers = await ref.watch(misskeyServersProvider.future);
  if (query.isEmpty) {
    return servers;
  }
  final q = query.toLowerCase();
  final filtered = servers.where(
    (e) => e.name.toLowerCase().contains(q) || e.url.contains(q),
  );
  final grouped = filtered.groupListsBy(
    (e) => e.name.toLowerCase().startsWith(q) || e.url.startsWith(q),
  );
  return [...?grouped[true], ...?grouped[false]];
}
