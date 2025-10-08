import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/id.dart';
import '../model/tab_settings.dart';
import 'timeline_last_viewed_note_id_notifier_provider.dart';

part 'timeline_last_viewed_at_provider.g.dart';

@riverpod
DateTime? timelineLastViewedAt(Ref ref, TabSettings tabSettings) {
  final noteId = ref.watch(
    timelineLastViewedNoteIdNotifierProvider(tabSettings),
  );
  if (noteId != null) {
    return Id.tryParse(noteId)?.date;
  }
  return null;
}
