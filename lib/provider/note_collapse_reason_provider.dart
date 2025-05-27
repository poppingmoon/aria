import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'note_provider.dart';
import 'parsed_mfm_provider.dart';

part 'note_collapse_reason_provider.g.dart';

enum CollapseReason { long, large }

(CollapseReason?, ({int maxLength, int maxNewLines})?) _checkShouldCollapse(
  List<MfmNode> nodes, {
  int maxLength = 500,
  int maxNewLines = 10,
}) {
  int length = maxLength;
  int newLines = maxNewLines;
  for (final node in nodes) {
    switch (node) {
      case MfmCodeBlock(:final code):
        length -= code.length;
        newLines -= '\n'.allMatches(code).length;
        if (newLines < 0) {
          return (CollapseReason.large, null);
        }
      case MfmPlain(:final text):
        length -= text.length;
        newLines -= '\n'.allMatches(text).length;
      case MfmInlineCode(:final code):
        length -= code.length;
      case MfmText(:final text):
        length -= text.length;
        newLines -= '\n'.allMatches(text).length;
      case MfmMention(:final acct):
        length -= acct.length;
      case MfmHashtag(:final hashtag):
        length -= hashtag.length;
      case MfmUrl(:final url):
        length -= url.length;
      case MfmFn(name: 'x2' || 'x3' || 'x4'):
        return (CollapseReason.large, null);
      case MfmNode(:final children?):
        final result = _checkShouldCollapse(
          children,
          maxLength: length,
          maxNewLines: newLines,
        );
        if (result.$1 case final result?) {
          return (result, null);
        }
        if (result.$2 case final result?) {
          length = result.maxLength;
          newLines = result.maxNewLines;
        }
      default:
    }
    if (length < 0 || newLines < 0) {
      return (CollapseReason.long, null);
    }
  }
  return (null, (maxLength: length, maxNewLines: newLines));
}

@riverpod
CollapseReason? noteCollapseReason(Ref ref, Account account, String noteId) {
  final text = ref.watch(
    noteProvider(account, noteId).select((note) => note?.text),
  );
  if (text != null) {
    final nodes = ref.watch(parsedMfmProvider(text));
    return _checkShouldCollapse(nodes).$1;
  } else {
    return null;
  }
}
