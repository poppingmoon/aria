import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

import 'account.dart';

part 'local_note_draft.freezed.dart';

@freezed
class const LocalNoteDraft({
  @override required final int id,
  @override required final Account account,
  @override final String? tabId,
  @override required final NoteDraft draft,
  @override required final bool isPinned,
}) with _$LocalNoteDraft;
