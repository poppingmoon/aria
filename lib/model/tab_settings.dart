import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';
import 'tab_icon.dart';
import 'tab_type.dart';

part 'tab_settings.freezed.dart';
part 'tab_settings.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const TabSettings({
  @override final String? id,
  @override required final TabType tabType,
  @override final String? name,
  @override required final Account account,
  @override final TabIcon? icon,
  @override final bool disableStreaming = false,
  @override final bool disableSubscribing = false,
  @override final bool withReplies = false,
  @override final bool withRenotes = true,
  @override final bool withSelfRenotes = true,
  @override final bool withFiles = false,
  @override final bool withSensitive = true,
  @override final bool keepPosition = false,
  @override final String? roleId,
  @override final String? channelId,
  @override final String? listId,
  @override final String? antennaId,
  @override final String? hashtag,
  @override final String? userId,
  @override final String? endpoint,
  @override final String? streamingChannel,
  @override final Map<String, dynamic>? parameters,
}) with _$TabSettings {
  factory fromJson(Map<String, Object?> json) => _$TabSettingsFromJson(json);

  Map<String, Object?> toJson() => _$TabSettingsToJson(this);

  const new dummy()
    : this(tabType: TabType.homeTimeline, account: const Account.dummy());

  factory homeTimeline(Account account) {
    return TabSettings(tabType: TabType.homeTimeline, account: account);
  }

  factory localTimeline(Account account) {
    return TabSettings(tabType: TabType.localTimeline, account: account);
  }

  factory globalTimeline(Account account) {
    return TabSettings(tabType: TabType.globalTimeline, account: account);
  }

  factory roleTimeline(Account account, String roleId) {
    return TabSettings(
      tabType: TabType.roleTimeline,
      account: account,
      roleId: roleId,
    );
  }

  factory userList(Account account, String listId) {
    return TabSettings(
      tabType: TabType.userList,
      account: account,
      listId: listId,
    );
  }

  factory antenna(Account account, String antennaId) {
    return TabSettings(
      tabType: TabType.antenna,
      account: account,
      antennaId: antennaId,
    );
  }

  factory channel(Account account, String channelId) {
    return TabSettings(
      tabType: TabType.channel,
      account: account,
      channelId: channelId,
    );
  }

  factory mention(Account account) {
    return TabSettings(tabType: TabType.mention, account: account);
  }

  factory direct(Account account) {
    return TabSettings(tabType: TabType.direct, account: account);
  }

  factory user(Account account, String userId) {
    return TabSettings(tabType: TabType.user, account: account, userId: userId);
  }
}
