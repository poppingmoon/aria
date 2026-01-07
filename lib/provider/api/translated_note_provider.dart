import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'translated_note_provider.g.dart';

@riverpod
FutureOr<NotesTranslateResponse?> translatedNote(
  Ref ref,
  Account account,
  String noteId,
  String targetLang,
) {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() => timer?.cancel());
  try {
    return ref
        .watch(misskeyProvider(account))
        .notes
        .translate(
          NotesTranslateRequest(noteId: noteId, targetLang: targetLang),
        );
  } catch (_) {
    timer?.cancel();
    link.close();
    rethrow;
  }
}
