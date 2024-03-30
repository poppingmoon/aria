import 'package:mfm_parser/mfm_parser.dart';

import '../extension/list_mfm_node_extension.dart';

List<MfmMention> extractMentions(List<MfmNode> nodes) {
  return nodes
      .extract((node) => node is MfmMention)
      .whereType<MfmMention>()
      .toList();
}
