import 'package:mfm_parser/mfm_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'parsed_mfm_provider.g.dart';

@riverpod
List<MfmNode> parsedMfm(ParsedMfmRef ref, String text) {
  return const MfmParser().parse(text);
}
