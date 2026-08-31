import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';
import 'tab_icon.dart';
import 'tab_type.dart';

part 'tab_settings.freezed.dart';
part 'tab_settings.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const TabSettings({
  final String? id,
  required final TabType tabType,
  final String? name,
  required final Account account,
  final TabIcon? icon,
  final bool disableStreaming = false,
  final bool disableSubscribing = false,
  final bool withReplies = false,
  final bool withRenotes = true,
  final bool withSelfRenotes = true,
  final bool withFiles = false,
  final bool withSensitive = true,
  final bool keepPosition = false,
  final String? roleId,
  final String? channelId,
  final String? listId,
  final String? antennaId,
  final String? hashtag,
  final String? userId,
  final String? endpoint,
  final String? streamingChannel,
  final Map<String, dynamic>? parameters,
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
