import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'clips_notifier_provider.g.dart';

@riverpod
class ClipsNotifier extends _$ClipsNotifier {
  @override
  FutureOr<List<Clip>> build(Account account) async {
    final response = await _misskey.clips.list();
    return response.toList();
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> create({
    required String name,
    String? description,
    bool? isPublic,
  }) async {
    final clip = await _misskey.clips.create(
      ClipsCreateRequest(
        name: name,
        description: description,
        isPublic: isPublic,
      ),
    );
    state = AsyncValue.data([
      clip,
      ...?state.valueOrNull,
    ]);
  }

  Future<void> updateClip(
    String clipId, {
    required String name,
    String? description,
    bool? isPublic,
  }) async {
    final updated = await _misskey.clips.update(
      ClipsUpdateRequest(
        clipId: clipId,
        name: name,
        description: description,
        isPublic: isPublic,
      ),
    );
    state = AsyncValue.data([
      ...?state.valueOrNull?.map((clip) => clip.id == clipId ? updated : clip),
    ]);
  }

  Future<void> delete(String clipId) async {
    await _misskey.clips.delete(ClipsDeleteRequest(clipId: clipId));
    state = AsyncValue.data([
      ...?state.valueOrNull?.where((clip) => clip.id != clipId),
    ]);
  }
}
