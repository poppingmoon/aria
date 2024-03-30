import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/tab_settings.dart';
import '../model/tab_type.dart';
import 'shared_preferences_provider.dart';

part 'timeline_tabs_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class TimelineTabsNotifier extends _$TimelineTabsNotifier {
  @override
  List<TabSettings> build() {
    final value = ref.watch(sharedPreferencesProvider).getStringList(_key);
    if (value != null) {
      return value
          .map(
            (e) => TabSettings.fromJson(jsonDecode(e) as Map<String, dynamic>),
          )
          .toList();
    } else {
      return [];
    }
  }

  static const _key = 'timelineTabs';

  Future<void> _save() async {
    await ref
        .read(sharedPreferencesProvider)
        .setStringList(_key, state.map((e) => jsonEncode(e.toJson())).toList());
  }

  TabSettings _removeUnusedValues(TabSettings tabSettings) {
    return tabSettings.copyWith(
      roleId: tabSettings.tabType == TabType.roleTimeline
          ? tabSettings.roleId
          : null,
      channelId:
          tabSettings.tabType == TabType.channel ? tabSettings.channelId : null,
      listId:
          tabSettings.tabType == TabType.userList ? tabSettings.listId : null,
      antennaId:
          tabSettings.tabType == TabType.antenna ? tabSettings.antennaId : null,
      userId: tabSettings.tabType == TabType.user ? tabSettings.userId : null,
    );
  }

  Future<void> add(TabSettings tabSettings) async {
    state = [...state, _removeUnusedValues(tabSettings)];
    await _save();
  }

  Future<void> replace(int index, TabSettings tabSettings) async {
    state = [
      ...state.sublist(0, index),
      _removeUnusedValues(tabSettings),
      ...state.sublist(index + 1),
    ];
    await _save();
  }

  Future<void> delete(int index) async {
    state = [
      ...state.sublist(0, index),
      ...state.sublist(index + 1),
    ];
    await _save();
  }

  Future<void> deleteTabsOfAccount(Account account) async {
    state = state.where((tabSetting) => tabSetting.account != account).toList();
    await _save();
  }

  Future<void> reorder(int oldIndex, int newIndex) async {
    final items = state.toList();
    final item = items.removeAt(oldIndex);
    items.insert(oldIndex < newIndex ? newIndex - 1 : newIndex, item);
    state = items;
    await _save();
  }

  Future<void> import(List<TabSettings> tabs) async {
    state = tabs;
    await _save();
  }
}
