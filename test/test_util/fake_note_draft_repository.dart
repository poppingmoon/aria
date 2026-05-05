import 'package:aria/model/account.dart';
import 'package:aria/repository/note_draft_repository.dart';
import 'package:isar_community/isar.dart';
import 'package:misskey_dart/src/data/base/note_draft.dart';

class FakeNoteDraftRepository extends NoteDraftRepository {
  FakeNoteDraftRepository() : super(_FakeIsar());

  @override
  Future<NoteDraft?> loadDraft({
    required Account account,
    String? tabId,
    String? replyId,
    String? renoteId,
    String? channelId,
  }) async {
    return null;
  }

  @override
  Future<void> saveDraft({
    required Account account,
    String? tabId,
    String? replyId,
    String? renoteId,
    String? channelId,
    required NoteDraft draft,
  }) async {}

  @override
  Future<void> deleteDraft({
    required Account account,
    String? tabId,
    String? replyId,
    String? renoteId,
    String? channelId,
  }) async {}
}

class _FakeIsar extends Isar {
  _FakeIsar() : super('');

  @override
  Future<void> copyToFile(String targetPath) {
    throw UnimplementedError();
  }

  @override
  String? get directory => throw UnimplementedError();

  @override
  Future<int> getSize({
    bool includeIndexes = false,
    bool includeLinks = false,
  }) {
    throw UnimplementedError();
  }

  @override
  int getSizeSync({bool includeIndexes = false, bool includeLinks = false}) {
    throw UnimplementedError();
  }

  @override
  Future<T> txn<T>(Future<T> Function() callback) {
    throw UnimplementedError();
  }

  @override
  T txnSync<T>(T Function() callback) {
    throw UnimplementedError();
  }

  @override
  Future<void> verify() {
    throw UnimplementedError();
  }

  @override
  Future<T> writeTxn<T>(Future<T> Function() callback, {bool silent = false}) {
    throw UnimplementedError();
  }

  @override
  T writeTxnSync<T>(T Function() callback, {bool silent = false}) {
    throw UnimplementedError();
  }
}
