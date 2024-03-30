import 'package:mfm_parser/mfm_parser.dart';

extension ListMfmNodeExtension on List<MfmNode> {
  void inspect(void Function(MfmNode node) action) {
    for (final node in this) {
      action(node);
      if (node case MfmNode(:final children?)) {
        children.inspect(action);
      }
    }
  }

  List<MfmNode> extract(bool Function(MfmNode node) predicate) {
    final dest = <MfmNode>[];
    inspect((node) {
      if (predicate(node)) {
        dest.add(node);
      }
    });
    return dest;
  }
}
