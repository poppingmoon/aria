import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'note_provider.dart';
import 'parsed_mfm_provider.dart';

part 'note_is_long_provider.g.dart';

int _countText(List<MfmNode> nodes) {
  return nodes.fold(0, (acc, node) {
    return switch (node) {
      MfmCodeBlock(:final code) => acc + code.length,
      MfmPlain(:final text) => acc + text.length,
      MfmInlineCode(:final code) => acc + code.length,
      MfmText(:final text) => acc + text.length,
      MfmMention(:final acct) => acc + acct.length,
      MfmHashtag(:final hashtag) => acc + hashtag.length,
      MfmUrl(:final url) => acc + url.length,
      MfmNode(:final children?) => acc + _countText(children),
      _ => acc,
    };
  });
}

int _countNewLines(List<MfmNode> nodes) {
  return nodes.fold(0, (acc, node) {
    return switch (node) {
      MfmCodeBlock(:final code) => acc + '\n'.allMatches(code).length,
      MfmPlain(:final text) => acc + '\n'.allMatches(text).length,
      MfmText(:final text) => acc + '\n'.allMatches(text).length,
      MfmNode(:final children?) => acc + _countNewLines(children),
      _ => acc,
    };
  });
}

@riverpod
bool noteIsLong(Ref ref, Account account, String noteId) {
  final text =
      ref.watch(noteProvider(account, noteId).select((note) => note?.text));
  if (text != null) {
    final nodes = ref.watch(parsedMfmProvider(text));
    return _countText(nodes) > 500 || _countNewLines(nodes) > 10;
  } else {
    return false;
  }
}
