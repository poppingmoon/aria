import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'main_event.freezed.dart';
part 'main_event.g.dart';

sealed class MainEvent;

@freezed
class const Notification(final INotificationsResponse notification)
    with _$Notification
    implements MainEvent;

@freezed
class const Mention(final Note note) with _$Mention implements MainEvent;

@freezed
class const MeUpdated(final MeDetailed i) with _$MeUpdated implements MainEvent;

@Freezed(toJson: false)
class const UrlUploadFinished({
  final String? marker,
  required final DriveFile file,
}) with _$UrlUploadFinished implements MainEvent {
  factory fromJson(Map<String, Object?> json) =>
      _$UrlUploadFinishedFromJson(json);
}

@freezed
class const UnreadNotification(final INotificationsResponse notification)
    with _$UnreadNotification
    implements MainEvent;

@freezed
class const NewChatMessage(final ChatMessage message)
    with _$NewChatMessage
    implements MainEvent;

@freezed
class const ReceiveFollowRequest(final UserLite user)
    with _$ReceiveFollowRequest
    implements MainEvent;

@freezed
class const AnnouncementCreated(final AnnouncementsResponse announcement)
    with _$AnnouncementCreated
    implements MainEvent;
