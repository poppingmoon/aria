import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'shared_preferences_provider.dart';

part 'searched_queries_notifier_provider.g.dart';

@riverpod
class SearchedQueriesNotifier extends _$SearchedQueriesNotifier {
  @override
  List<String> build(Account account) {
    return ref.watch(sharedPreferencesProvider).getStringList(_key) ?? [];
  }

  String get _key => '$account/searched-queries';

  Future<void> _save() async {
    await ref.read(sharedPreferencesProvider).setStringList(_key, state);
  }

  void add(String query) {
    state = [query, ...state.where((q) => q != query)];
    _save();
  }

  void delete(String query) {
    state = state.where((q) => q != query).toList();
    _save();
  }
}
