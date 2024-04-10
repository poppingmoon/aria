import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'popular_gallery_posts_provider.g.dart';

@riverpod
FutureOr<List<GalleryPost>> popularGalleryPosts(
  PopularGalleryPostsRef ref,
  Account account,
) async {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() => timer?.cancel());
  try {
    final response =
        await ref.watch(misskeyProvider(account)).gallery.popular();
    return response.toList();
  } catch (_) {
    timer?.cancel();
    link.close();
    rethrow;
  }
}
