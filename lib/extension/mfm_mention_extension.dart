import 'package:mfm_parser/mfm_parser.dart';

import '../util/punycode.dart';

extension MfmMentionExtension on MfmMention {
  MfmMention normalize(String localHost) {
    if (host case final host?) {
      final normalizedHost = toUnicode(host.toLowerCase());
      return MfmMention(
        username: username.toLowerCase(),
        host: normalizedHost == localHost ? null : normalizedHost,
        acct: acct,
      );
    } else {
      return MfmMention(username: username.toLowerCase(), acct: acct);
    }
  }
}
