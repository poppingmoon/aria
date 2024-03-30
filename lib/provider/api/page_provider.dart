import 'dart:async';

import 'package:collection/collection.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'page_provider.g.dart';

@riverpod
class PageNotifier extends _$PageNotifier {
  @override
  FutureOr<Page> build(
    Account account, {
    String? pageId,
    String? pageName,
    String? username,
  }) async {
    final page = await _misskey.pages.show(
      PagesShowRequest(
        pageId: pageId,
        name: pageName,
        username: username,
      ),
    );
    final noteIds = page.content.map(_getNoteIds).flattened.toSet().where(
          (noteId) =>
              !ref.read(notesNotifierProvider(account)).containsKey(noteId),
        );
    unawaited(
      Future.wait(
        noteIds.map(
          (noteId) async {
            final note =
                await _misskey.notes.show(NotesShowRequest(noteId: noteId));
            ref.read(notesNotifierProvider(account).notifier).add(note);
          },
        ),
      ),
    );
    return page;
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  String get _pageId => pageId ?? state.valueOrNull!.id;

  Iterable<String> _getNoteIds(AbstractPageContent block) {
    return switch (block) {
      PageSection(:final children) => children.map(_getNoteIds).flattened,
      PageNote(:final note) => [note],
      _ => [],
    };
  }

  Future<void> like() async {
    await _misskey.pages.like(PagesLikeRequest(pageId: _pageId));
    final page = await future;
    state = AsyncValue.data(
      page.copyWith(isLiked: true, likedCount: page.likedCount + 1),
    );
  }

  Future<void> unlike() async {
    await _misskey.pages.unlike(PagesUnlikeRequest(pageId: _pageId));
    final page = await future;
    state = AsyncValue.data(
      page.copyWith(isLiked: false, likedCount: page.likedCount - 1),
    );
  }
}
