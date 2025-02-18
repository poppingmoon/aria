import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/id.dart';
import '../model/tab_settings.dart';
import 'api/id_gen_method_provider.dart';
import 'shared_preferences_provider.dart';

part 'timeline_last_viewed_note_id_notifier_provider.g.dart';

@riverpod
class TimelineLastViewedNoteIdNotifier
    extends _$TimelineLastViewedNoteIdNotifier {
  @override
  String? build(TabSettings tabSettings) {
    if (tabSettings.id == null) {
      return null;
    }
    ref.onDispose(() => _timer?.cancel());
    return ref.watch(sharedPreferencesProvider).getString(_key);
  }

  String get _key => 'timelineTabs/${tabSettings.id}/lastViewed';

  Timer? _timer;

  bool _recentlySaved = false;

  void save(String noteId) {
    if (tabSettings.id == null) return;
    if (!_recentlySaved) {
      ref.read(sharedPreferencesProvider).setString(_key, noteId);
      _recentlySaved = true;
      _timer = Timer(const Duration(seconds: 1), () => _recentlySaved = false);
    }
  }

  Future<void> saveFromDate(DateTime date) async {
    if (tabSettings.id == null) return;
    final method = await ref.read(
      idGenMethodProvider(tabSettings.account).future,
    );
    final id = Id(method: method, date: date).toString();
    save(id);
  }
}
