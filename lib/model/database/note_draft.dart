import 'package:isar_community/isar.dart';

import '../../util/fast_hash.dart';

part 'note_draft.g.dart';

@collection
class NoteDraft {
  Id id = Isar.autoIncrement;

  @Index()
  late String account;

  @Index()
  String? tabId;

  String? replyId;

  String? renoteId;

  String? channelId;

  late String draft;

  bool isPinned = false;

  void setId() {
    if (tabId case final tabId?) {
      id = fastHash(tabId);
    } else if (!isPinned) {
      id = fastHash(
        [
          'account:$account',
          if (replyId case final replyId?) 'replyId:$replyId',
          if (renoteId case final renoteId?) 'renoteId:$renoteId',
          if (channelId case final channelId?) 'channelId:$channelId',
        ].join(','),
      );
    }
  }
}
