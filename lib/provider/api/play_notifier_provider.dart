import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'play_notifier_provider.g.dart';

@riverpod
class PlayNotifier extends _$PlayNotifier {
  @override
  FutureOr<Flash> build(Account account, String playId) async {
    return _misskey.flash.show(FlashShowRequest(flashId: playId));
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> updatePlay({
    required String title,
    required String summary,
    required String script,
    required FlashVisibility visibility,
  }) async {
    await _misskey.flash.update(
      FlashUpdateRequest(
        flashId: playId,
        title: title,
        summary: summary,
        script: script,
        permissions: [],
        visibility: visibility,
      ),
    );
    final play = await future;
    state = AsyncValue.data(
      play.copyWith(
        title: title,
        summary: summary,
        script: script,
      ),
    );
  }

  Future<void> like() async {
    await _misskey.flash.like(FlashLikeRequest(flashId: playId));
    final play = await future;
    state = AsyncValue.data(
      play.copyWith(isLiked: true, likedCount: (play.likedCount ?? 0) + 1),
    );
  }

  Future<void> unlike() async {
    await _misskey.flash.unlike(FlashUnlikeRequest(flashId: playId));
    final play = await future;
    state = AsyncValue.data(
      play.copyWith(isLiked: false, likedCount: (play.likedCount ?? 1) - 1),
    );
  }
}
