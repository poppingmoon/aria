import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/note_draft_repository.dart';
import 'isar_provider.dart';

part 'note_draft_repository_provider.g.dart';

@riverpod
FutureOr<NoteDraftRepository> noteDraftRepository(Ref ref) async {
  final isar = await ref.watch(isarProvider.future);
  return NoteDraftRepository(isar);
}
