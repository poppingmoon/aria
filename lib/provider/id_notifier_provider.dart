import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/id.dart';
import 'notes_notifier_provider.dart';

part 'id_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class IdNotifier extends _$IdNotifier {
  @override
  IdGenMethod build(Account account) {
    final id = ref.watch(
      notesNotifierProvider(account).select((notes) => notes.values.first.id),
    );
    return Id.parse(id).method;
  }

  String genId(DateTime date) {
    return Id(method: state, date: date).toString();
  }
}
