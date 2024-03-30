import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'favorite_clips_notifier_provider.g.dart';

@riverpod
class FavoriteClipsNotifier extends _$FavoriteClipsNotifier {
  @override
  FutureOr<List<Clip>> build(Account account) async {
    final response = await _misskey.clips.myFavorites();
    return response.toList();
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));
}
