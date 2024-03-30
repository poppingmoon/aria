import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'meta_provider.g.dart';

@riverpod
FutureOr<MetaResponse> meta(MetaRef ref, Account account) async {
  final link = ref.keepAlive();
  try {
    final response = await ref.watch(misskeyProvider(account)).meta();
    return response;
  } catch (_) {
    link.close();
    rethrow;
  }
}
