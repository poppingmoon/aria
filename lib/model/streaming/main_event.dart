import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'main_event.freezed.dart';
part 'main_event.g.dart';

sealed class MainEvent;

@freezed
class const Notification(@override final INotificationsResponse notification)
    with _$Notification
    implements MainEvent;

@freezed
class const Mention(@override final Note note)
    with _$Mention
    implements MainEvent;

@freezed
class const MeUpdated(@override final MeDetailed i)
    with _$MeUpdated
    implements MainEvent;

@Freezed(toJson: false)
class const UrlUploadFinished({
  @override final String? marker,
  @override required final DriveFile file,
}) with _$UrlUploadFinished implements MainEvent {
  factory fromJson(Map<String, Object?> json) =>
      _$UrlUploadFinishedFromJson(json);
}

@freezed
class const UnreadNotification(
  @override final INotificationsResponse notification,
) with _$UnreadNotification implements MainEvent;

@freezed
class const NewChatMessage(@override final ChatMessage message)
    with _$NewChatMessage
    implements MainEvent;

@freezed
class const ReceiveFollowRequest(@override final UserLite user)
    with _$ReceiveFollowRequest
    implements MainEvent;

@freezed
class const AnnouncementCreated(
  @override final AnnouncementsResponse announcement,
) with _$AnnouncementCreated implements MainEvent;
