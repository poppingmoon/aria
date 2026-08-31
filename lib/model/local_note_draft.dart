import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

import 'account.dart';

part 'local_note_draft.freezed.dart';

@freezed
class const LocalNoteDraft({
  required final int id,
  required final Account account,
  final String? tabId,
  required final NoteDraft draft,
  required final bool isPinned,
}) with _$LocalNoteDraft;
