import 'dart:convert';

import 'package:isar_community/isar.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../model/account.dart';
import '../model/database/note_draft.dart' as db;

class NoteDraftRepository {
  const NoteDraftRepository(this.isar);

  final Isar isar;

  Future<NoteDraft?> loadDraft({
    required Account account,
    String? tabId,
    String? replyId,
    String? renoteId,
    String? channelId,
  }) async {
    final draft = tabId != null
        ? await isar.noteDrafts.where().tabIdEqualTo(tabId).findFirst()
        : replyId != null
        ? await isar.noteDrafts
              .where()
              .accountEqualTo(account.toString())
              .filter()
              .replyIdEqualTo(replyId)
              .sortByIsPinned()
              .findFirst()
        : renoteId != null
        ? await isar.noteDrafts
              .where()
              .accountEqualTo(account.toString())
              .filter()
              .renoteIdEqualTo(renoteId)
              .sortByIsPinned()
              .findFirst()
        : channelId != null
        ? await isar.noteDrafts
              .where()
              .accountEqualTo(account.toString())
              .filter()
              .channelIdEqualTo(channelId)
              .sortByIsPinned()
              .findFirst()
        : await isar.noteDrafts
              .where()
              .accountEqualTo(account.toString())
              .filter()
              .tabIdIsNull()
              .replyIdIsNull()
              .renoteIdIsNull()
              .channelIdIsNull()
              .sortByIsPinned()
              .findFirst();
    if (draft != null) {
      try {
        return NoteDraft.fromJson(
          jsonDecode(draft.draft) as Map<String, dynamic>,
        );
      } catch (_) {}
    }
    return null;
  }

  Future<void> saveDraft({
    required Account account,
    String? tabId,
    String? replyId,
    String? renoteId,
    String? channelId,
    required NoteDraft draft,
  }) async {
    await isar.writeTxn(() async {
      await isar.noteDrafts.put(
        db.NoteDraft()
          ..account = account.toString()
          ..tabId = tabId
          ..replyId = replyId
          ..renoteId = renoteId
          ..channelId = channelId
          ..draft = jsonEncode(draft.toJson())
          ..setId(),
      );
    });
  }

  Future<void> deleteDraft({
    required Account account,
    String? tabId,
    String? replyId,
    String? renoteId,
    String? channelId,
  }) async {
    if (tabId != null) {
      await isar.writeTxn(() async {
        await isar.noteDrafts.where().tabIdEqualTo(tabId).deleteFirst();
      });
    } else if (replyId != null) {
      await isar.writeTxn(() async {
        await isar.noteDrafts
            .where()
            .accountEqualTo(account.toString())
            .filter()
            .replyIdEqualTo(replyId)
            .isPinnedEqualTo(false)
            .deleteFirst();
      });
    } else if (renoteId != null) {
      await isar.writeTxn(() async {
        await isar.noteDrafts
            .where()
            .accountEqualTo(account.toString())
            .filter()
            .renoteIdEqualTo(renoteId)
            .isPinnedEqualTo(false)
            .deleteFirst();
      });
    } else if (channelId != null) {
      await isar.writeTxn(() async {
        await isar.noteDrafts
            .where()
            .accountEqualTo(account.toString())
            .filter()
            .channelIdEqualTo(channelId)
            .isPinnedEqualTo(false)
            .deleteFirst();
      });
    } else {
      await isar.writeTxn(() async {
        await isar.noteDrafts
            .where()
            .accountEqualTo(account.toString())
            .filter()
            .tabIdIsNull()
            .replyIdIsNull()
            .renoteIdIsNull()
            .channelIdIsNull()
            .isPinnedEqualTo(false)
            .deleteFirst();
      });
    }
  }
}
