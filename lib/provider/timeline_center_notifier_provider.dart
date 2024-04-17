import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/id.dart';
import '../model/tab_settings.dart';
import 'api/id_gen_method_provider.dart';

part 'timeline_center_notifier_provider.g.dart';

@riverpod
class TimelineCenterNotifier extends _$TimelineCenterNotifier {
  @override
  String? build(TabSettings tabSettings) {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void setCenter(String id) {
    state = id;
  }

  Future<void> setCenterFromDate(DateTime date) async {
    final id = state ??
        tabSettings.antennaId ??
        tabSettings.channelId ??
        tabSettings.listId ??
        tabSettings.roleId ??
        tabSettings.userId;
    final method = id != null
        ? Id.parse(id).method
        : await ref.read(idGenMethodProvider(tabSettings.account).future);
    setCenter(Id(method: method, date: date).toString());
  }

  void reset() {
    state = null;
  }
}
