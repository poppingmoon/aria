import 'dart:collection';

import 'package:mfm_parser/mfm_parser.dart';

import '../extension/list_mfm_node_extension.dart';

String _removeHash(String link) {
  final hashIndex = link.lastIndexOf('#');
  if (hashIndex < 0) {
    return link;
  } else {
    return link.substring(0, hashIndex);
  }
}

List<String> extractUrl(List<MfmNode> nodes) {
  final urlNodes = nodes.extract((node) => node is MfmURL || node is MfmLink);
  final urls = LinkedHashSet<String>(
    equals: (link, other) => _removeHash(link) == _removeHash(other),
    hashCode: (link) => _removeHash(link).hashCode,
  );
  urlNodes.inspect((node) {
    if (node
        case MfmURL(value: final url) || MfmLink(:final url, silent: false)) {
      urls.add(url);
    }
  });
  return urls.toList();
}
