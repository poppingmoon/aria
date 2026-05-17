import 'dart:math';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/tab_settings.dart';

part 'timeline_notes_queue_notifier_provider.g.dart';

@riverpod
class TimelineNotesQueueNotifier extends _$TimelineNotesQueueNotifier {
  @override
  List<Note> build(TabSettings tabSettings) {
    return [];
  }

  void add(Note note) {
    state = [note, ...state];
  }

  List<Note> popMany(int limit) {
    final count = max(0, state.length - limit);
    final notes = state.skip(count).toList();
    state = state.take(count).toList();
    return notes;
  }
}
