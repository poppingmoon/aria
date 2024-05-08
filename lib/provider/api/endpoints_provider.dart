import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'endpoints_provider.g.dart';

@riverpod
FutureOr<List<String>> endpoints(EndpointsRef ref, String host) {
  final link = ref.keepAlive();
  try {
    return ref.watch(misskeyProvider(Account(host: host))).endpoints();
  } catch (_) {
    link.close();
    rethrow;
  }
}
