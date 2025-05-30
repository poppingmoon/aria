import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../extension/note_extension.dart';
import '../model/account.dart';
import 'note_provider.dart';

part 'appear_note_provider.g.dart';

@riverpod
Note? appearNote(Ref ref, Account account, String noteId) {
  final note = ref.watch(noteProvider(account, noteId));
  if (note != null) {
    if (note.isRenote) {
      return ref.watch(noteProvider(account, note.renoteId!));
    } else {
      return note;
    }
  } else {
    return null;
  }
}
