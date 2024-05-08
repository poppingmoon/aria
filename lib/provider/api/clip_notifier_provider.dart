import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'clip_notifier_provider.g.dart';

@riverpod
class ClipNotifier extends _$ClipNotifier {
  @override
  FutureOr<Clip> build(Account account, String clipId) {
    return _misskey.clips.show(ClipsShowRequest(clipId: clipId));
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> favorite() async {
    await _misskey.clips.favorite(ClipsFavoriteRequest(clipId: clipId));
    final clip = await future;
    state = AsyncValue.data(
      clip.copyWith(
        isFavorited: true,
        favoritedCount: (clip.favoritedCount ?? 0) + 1,
      ),
    );
  }

  Future<void> unfavorite() async {
    await _misskey.clips.unfavorite(ClipsUnfavoriteRequest(clipId: clipId));
    final clip = await future;
    state = AsyncValue.data(
      clip.copyWith(
        isFavorited: false,
        favoritedCount: (clip.favoritedCount ?? 1) - 1,
      ),
    );
  }
}
