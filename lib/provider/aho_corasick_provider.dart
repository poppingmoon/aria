import 'package:aho_corasick/aho_corasick.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'aho_corasick_provider.g.dart';

@Riverpod(keepAlive: true)
AhoCorasick ahoCorasick(Ref ref, List<String> words) {
  return AhoCorasick.fromWordList(words);
}
