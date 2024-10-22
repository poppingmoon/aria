import 'package:aho_corasick/aho_corasick.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'aho_corasick_provider.dart';

part 'mute_provider.g.dart';

@Riverpod(keepAlive: true)
(AhoCorasick, List<List<String>>, List<RegExp>) mute(
  Ref ref,
  List<MuteWord> mutedWords,
) {
  final acable = <String>[];
  final unacable = <List<String>>[];
  final regExps = <RegExp>[];
  for (final muteWord in mutedWords) {
    if (muteWord case MuteWord(:final content?)) {
      if (content.length == 1) {
        acable.add(content.single);
      } else {
        unacable.add(content);
      }
    }
    if (muteWord case MuteWord(:final regExp?)) {
      final regExpAndFlags = RegExp(r'^\/(.+)\/(.*)$').firstMatch(regExp);
      if (regExpAndFlags != null) {
        try {
          final flags = regExpAndFlags[2] ?? '';
          regExps.add(
            RegExp(
              regExpAndFlags[1]!,
              multiLine: flags.contains('m'),
              caseSensitive: !flags.contains('i'),
              unicode: flags.contains('u'),
              dotAll: flags.contains('s'),
            ),
          );
        } catch (_) {}
      }
    }
  }
  final ac = ref.watch(ahoCorasickProvider(acable));
  return (ac, unacable, regExps);
}
