import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'translated_note_provider.g.dart';

@riverpod
FutureOr<NotesTranslateResponse> translatedNote(
  Ref ref,
  Account account,
  String noteId,
  String targetLang,
) {
  return ref
      .watch(misskeyProvider(account))
      .notes
      .translate(NotesTranslateRequest(noteId: noteId, targetLang: targetLang));
}
