import 'dart:async';
import 'dart:math';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'clips_notifier_provider.g.dart';

@riverpod
class ClipsNotifier extends _$ClipsNotifier {
  @override
  Stream<PaginationState<Clip>> build(Account account) async* {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final response = await _fetchClips();
      yield PaginationState.fromIterable(response);
      if (response.isNotEmpty && response.length < 20) {
        await loadMore();
      }
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<Clip>> _fetchClips({String? untilId}) async {
    final clips = await _misskey.clips.list(
      ClipsListRequest(untilId: untilId, limit: 30),
    );
    if (untilId != null) {
      return clips.where((clip) => clip.id.compareTo(untilId) < 0);
    } else {
      return clips;
    }
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchClips(untilId: value.items.lastOrNull?.id);
      shouldLoadMore = response.isNotEmpty && response.length < 5;
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
  }

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
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [clip, ...value.items]));
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
    if (state.valueOrNull case final value?) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .map((clip) => clip.id == clipId ? updated : clip)
              .toList(),
        ),
      );
    }
  }

  Future<void> delete(String clipId) async {
    await _misskey.clips.delete(ClipsDeleteRequest(clipId: clipId));
    if (state.valueOrNull case final value?) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items.where((clip) => clip.id != clipId).toList(),
        ),
      );
    }
  }

  Future<void> addNote(String clipId, String noteId) async {
    await _misskey.clips.addNote(
      ClipsAddNoteRequest(clipId: clipId, noteId: noteId),
    );
    if (state.valueOrNull case final value?) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .map(
                (clip) => clip.id == clipId
                    ? clip.copyWith(notesCount: (clip.notesCount ?? 0) + 1)
                    : clip,
              )
              .toList(),
        ),
      );
    }
  }

  Future<void> removeNote(String clipId, String noteId) async {
    await _misskey.clips.removeNote(
      ClipsRemoveNoteRequest(clipId: clipId, noteId: noteId),
    );
    decrementNotesCount(clipId);
  }

  void decrementNotesCount(String clipId) {
    if (state.valueOrNull case final value?) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .map(
                (clip) => clip.id == clipId
                    ? clip.copyWith(
                        notesCount: max(0, (clip.notesCount ?? 1) - 1),
                      )
                    : clip,
              )
              .toList(),
        ),
      );
    }
  }

  Future<void> favorite(String clipId) async {
    await _misskey.clips.favorite(ClipsFavoriteRequest(clipId: clipId));
    if (state.valueOrNull case final value?) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .map(
                (clip) => clip.id == clipId
                    ? clip.copyWith(
                        isFavorited: true,
                        favoritedCount: (clip.favoritedCount ?? 0) + 1,
                      )
                    : clip,
              )
              .toList(),
        ),
      );
    }
  }

  Future<void> unfavorite(String clipId) async {
    await _misskey.clips.unfavorite(ClipsUnfavoriteRequest(clipId: clipId));
    if (state.valueOrNull case final value?) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .map(
                (clip) => clip.id == clipId
                    ? clip.copyWith(
                        isFavorited: false,
                        favoritedCount: (clip.favoritedCount ?? 1) - 1,
                      )
                    : clip,
              )
              .toList(),
        ),
      );
    }
  }
}
