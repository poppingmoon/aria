import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../model/account.dart';
import '../../provider/notes_notifier_provider.dart';
import 'error_message.dart';

class const NoteFallbackWidget({
  super.key,
  required final Account account,
  required final String noteId,
}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(notesNotifierProvider(account).notifier).show(noteId),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SingleChildScrollView(
            child: ErrorMessage(
              error: snapshot.error,
              stackTrace: snapshot.stackTrace,
            ),
          );
        } else {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
