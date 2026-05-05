import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

import 'account.dart';

part 'local_note_draft.freezed.dart';

@freezed
abstract class LocalNoteDraft with _$LocalNoteDraft {
  const factory LocalNoteDraft({
    required int id,
    required Account account,
    String? tabId,
    required NoteDraft draft,
    required bool isPinned,
  }) = _LocalNoteDraft;
}
