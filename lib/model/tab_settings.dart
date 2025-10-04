import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';
import 'tab_icon.dart';
import 'tab_type.dart';

part 'tab_settings.freezed.dart';
part 'tab_settings.g.dart';

@freezed
abstract class TabSettings with _$TabSettings {
  const factory TabSettings({
    String? id,
    required TabType tabType,
    String? name,
    required Account account,
    TabIcon? icon,
    @Default(false) bool disableStreaming,
    @Default(false) bool disableSubscribing,
    @Default(false) bool withReplies,
    @Default(true) bool withRenotes,
    @Default(true) bool withSelfRenotes,
    @Default(false) bool withFiles,
    @Default(true) bool withSensitive,
    @Default(false) bool keepPosition,
    String? roleId,
    String? channelId,
    String? listId,
    String? antennaId,
    String? hashtag,
    String? userId,
    String? endpoint,
    String? streamingChannel,
    Map<String, dynamic>? parameters,
  }) = _TabSettings;

  factory TabSettings.fromJson(Map<String, Object?> json) =>
      _$TabSettingsFromJson(json);

  factory TabSettings.dummy() {
    return TabSettings(tabType: TabType.homeTimeline, account: Account.dummy());
  }

  factory TabSettings.homeTimeline(Account account) {
    return TabSettings(tabType: TabType.homeTimeline, account: account);
  }

  factory TabSettings.localTimeline(Account account) {
    return TabSettings(tabType: TabType.localTimeline, account: account);
  }

  factory TabSettings.globalTimeline(Account account) {
    return TabSettings(tabType: TabType.globalTimeline, account: account);
  }

  factory TabSettings.roleTimeline(Account account, String roleId) {
    return TabSettings(
      tabType: TabType.roleTimeline,
      account: account,
      roleId: roleId,
    );
  }

  factory TabSettings.userList(Account account, String listId) {
    return TabSettings(
      tabType: TabType.userList,
      account: account,
      listId: listId,
    );
  }

  factory TabSettings.antenna(Account account, String antennaId) {
    return TabSettings(
      tabType: TabType.antenna,
      account: account,
      antennaId: antennaId,
    );
  }

  factory TabSettings.channel(Account account, String channelId) {
    return TabSettings(
      tabType: TabType.channel,
      account: account,
      channelId: channelId,
    );
  }

  factory TabSettings.mention(Account account) {
    return TabSettings(tabType: TabType.mention, account: account);
  }

  factory TabSettings.direct(Account account) {
    return TabSettings(tabType: TabType.direct, account: account);
  }

  factory TabSettings.user(Account account, String userId) {
    return TabSettings(tabType: TabType.user, account: account, userId: userId);
  }
}
