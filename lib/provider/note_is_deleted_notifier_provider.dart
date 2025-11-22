import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';

part 'note_is_deleted_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class NoteIsDeletedNotifier extends _$NoteIsDeletedNotifier {
  @override
  bool build(Account account, String noteId) {
    return false;
  }

  void markAsDeleted() {
    state = true;
  }
}
