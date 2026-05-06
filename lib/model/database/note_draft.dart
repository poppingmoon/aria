import 'package:isar_community/isar.dart';

import '../../util/fast_hash.dart';

part 'note_draft.g.dart';

@collection
class NoteDraft {
  NoteDraft();

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'account': account,
      'tabId': tabId,
      'replyId': replyId,
      'renoteId': renoteId,
      'channelId': channelId,
      'draft': draft,
      'isPinned': isPinned,
    };
  }

  factory NoteDraft.fromJson(Map<String, dynamic> json) {
    return NoteDraft()
      ..id = json['id'] as int
      ..account = json['account'] as String
      ..tabId = json['tabId'] as String?
      ..replyId = json['replyId'] as String?
      ..renoteId = json['renoteId'] as String?
      ..channelId = json['channelId'] as String?
      ..draft = json['draft'] as String
      ..isPinned = json['isPinned'] as bool;
  }
}
