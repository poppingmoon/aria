import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/tab_settings.dart';
import '../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../provider/api/timeline_notes_notifier_provider.dart';
import '../provider/streaming/web_socket_channel_provider.dart';
import '../provider/timeline_center_notifier_provider.dart';
import '../provider/timeline_last_viewed_note_id_notifier_provider.dart';

Future<void> reloadTimeline(WidgetRef ref, TabSettings tabSettings) async {
  if (!tabSettings.disableStreaming) {
    ref.invalidate(webSocketChannelProvider(tabSettings.account));
  }
  ref.read(timelineCenterNotifierProvider(tabSettings).notifier).reset();
  await Future.wait([
    ref.refresh(timelineNotesAfterNoteNotifierProvider(tabSettings).future),
    ref.refresh(timelineNotesNotifierProvider(tabSettings).future),
    ref
        .read(timelineLastViewedNoteIdNotifierProvider(tabSettings).notifier)
        .saveFromDate(DateTime.now()),
  ]);
}
