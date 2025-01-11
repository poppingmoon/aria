import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'parsed_mfm_provider.g.dart';

@riverpod
List<MfmNode> parsedMfm(Ref ref, String text) {
  return parse(text);
}
