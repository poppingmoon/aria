import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'mute_provider.dart';
import 'muted_words_notifier_provider.dart';
import 'note_provider.dart';

part 'check_word_mute_provider.g.dart';

@riverpod
bool checkWordMute(
  Ref ref,
  Account account,
  String noteId, {
  bool hardMute = false,
}) {
  final note = ref.watch(noteProvider(account, noteId));
  if (note == null ||
      (note.user.username == account.username && note.user.host == null)) {
    return false;
  }
  final text = [
    note.cw,
    note.text,
    note.reply?.cw,
    note.reply?.text,
    note.renote?.cw,
    note.renote?.text,
  ].nonNulls.join('\n');
  if (text.isEmpty) {
    return false;
  }
  final mutedWords = ref.watch(
    mutedWordsNotifierProvider(account, hardMute: hardMute),
  );
  final (ac, filters, regExps) = ref.watch(muteProvider(mutedWords));
  if (ac.firstMatch(text) != null) {
    return true;
  }
  if (filters.any(
    (filter) => filter.every((keyword) => text.contains(keyword)),
  )) {
    return true;
  }
  return regExps.any((regExp) => regExp.hasMatch(text));
}
