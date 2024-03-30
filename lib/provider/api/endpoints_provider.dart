import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'endpoints_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<String>> endpoints(EndpointsRef ref, String host) {
  return ref.watch(misskeyProvider(Account(host: host))).endpoints();
}
