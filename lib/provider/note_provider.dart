import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'notes_notifier_provider.dart';

part 'note_provider.g.dart';

@Riverpod(keepAlive: true)
Note? note(Ref ref, Account account, String noteId) {
  return ref.watch(
    notesNotifierProvider(account).select((notes) => notes[noteId]),
  );
}
