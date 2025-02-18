import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'search_hashtags_provider.g.dart';

@riverpod
FutureOr<List<String>> searchHashtags(
  Ref ref,
  Account account,
  String query,
) async {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() => timer?.cancel());
  try {
    final response = await ref
        .watch(misskeyProvider(account))
        .hashtags
        .search(HashtagsSearchRequest(query: query));
    return response.toList();
  } catch (_) {
    timer?.cancel();
    link.close();
    rethrow;
  }
}
