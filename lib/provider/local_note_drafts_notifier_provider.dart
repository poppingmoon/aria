import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar_community/isar.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/database/note_draft.dart' as _;
import '../model/local_note_draft.dart';
import 'accounts_notifier_provider.dart';
import 'isar_provider.dart';
import 'note_notifier_provider.dart';
import 'notes_notifier_provider.dart';
import 'timeline_tabs_notifier_provider.dart';

part 'local_note_drafts_notifier_provider.g.dart';

@riverpod
class LocalNoteDraftsNotifier extends _$LocalNoteDraftsNotifier {
  @override
  Stream<List<LocalNoteDraft>> build() async* {
    final isar = await ref.watch(isarProvider.future);
    final tabIds = ref.watch(
      timelineTabsNotifierProvider.select(
        (tabs) => tabs.map((tab) => tab.id).toList(),
      ),
    );
    final accounts = ref.watch(accountsNotifierProvider);
    yield* isar.noteDrafts
        .where()
        .watch(fireImmediately: true)
        .map(
          (items) => items
              .map((item) {
                try {
                  final account = Account.fromString(item.account);
                  final draft = NoteDraft.fromJson(
                    jsonDecode(item.draft) as Map<String, dynamic>,
                  );
                  if (draft.reply case final reply?) {
                    if (ref.read(noteNotifierProvider(account, reply.id)) ==
                        null) {
                      ref
                          .read(notesNotifierProvider(account).notifier)
                          .add(reply);
                    }
                  }
                  if (draft.renote case final renote?) {
                    if (ref.read(noteNotifierProvider(account, renote.id)) ==
                        null) {
                      ref
                          .read(notesNotifierProvider(account).notifier)
                          .add(renote);
                    }
                  }
                  return LocalNoteDraft(
                    id: item.id,
                    account: account,
                    tabId: item.tabId,
                    draft: draft,
                    isPinned: item.isPinned,
                  );
                } catch (_) {}
                return null;
              })
              .nonNulls
              .sorted(
                (a, b) => switch ((a, b)) {
                  (
                    LocalNoteDraft(isPinned: true),
                    LocalNoteDraft(isPinned: true),
                  ) =>
                    b.draft.createdAt.compareTo(a.draft.createdAt),
                  (
                    LocalNoteDraft(isPinned: true),
                    LocalNoteDraft(isPinned: false),
                  ) =>
                    -1,
                  (
                    LocalNoteDraft(isPinned: false),
                    LocalNoteDraft(isPinned: true),
                  ) =>
                    1,
                  (
                    LocalNoteDraft(tabId: final aTabId?),
                    LocalNoteDraft(tabId: final bTabId?),
                  )
                      when aTabId == bTabId =>
                    b.draft.createdAt.compareTo(a.draft.createdAt),
                  (LocalNoteDraft(tabId: _?), LocalNoteDraft(:final tabId?))
                      when !tabIds.contains(tabId) =>
                    -1,
                  (LocalNoteDraft(:final tabId?), LocalNoteDraft(tabId: _?))
                      when !tabIds.contains(tabId) =>
                    1,
                  (
                    LocalNoteDraft(tabId: final aTabId?),
                    LocalNoteDraft(tabId: final bTabId?),
                  ) =>
                    tabIds.indexOf(aTabId).compareTo(tabIds.indexOf(bTabId)),
                  (LocalNoteDraft(tabId: _?), LocalNoteDraft(tabId: null)) =>
                    -1,
                  (LocalNoteDraft(tabId: null), LocalNoteDraft(tabId: _?)) => 1,
                  _ when a.account == b.account => b.draft.createdAt.compareTo(
                    a.draft.createdAt,
                  ),
                  _ when !accounts.contains(b.account) => -1,
                  _ when !accounts.contains(a.account) => 1,
                  _ =>
                    accounts
                        .indexOf(a.account)
                        .compareTo(accounts.indexOf(b.account)),
                },
              )
              .toList(),
        );
  }

  Future<void> pin(int id) async {
    final isar = await ref.read(isarProvider.future);
    final draft = await isar.noteDrafts.get(id);
    draft!
      ..id = Isar.autoIncrement
      ..tabId = null
      ..isPinned = true;
    await isar.writeTxn(() async {
      await isar.noteDrafts.put(draft);
    });
  }

  Future<void> delete(int id) async {
    final isar = await ref.read(isarProvider.future);
    await isar.writeTxn(() async {
      await isar.noteDrafts.delete(id);
    });
  }
}
