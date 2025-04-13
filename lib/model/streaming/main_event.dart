import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'main_event.freezed.dart';
part 'main_event.g.dart';

sealed class MainEvent {}

@freezed
class Notification with _$Notification implements MainEvent {
  const Notification(this.notification);

  @override
  final INotificationsResponse notification;
}

@freezed
class Mention with _$Mention implements MainEvent {
  const Mention(this.note);

  @override
  final Note note;
}

@freezed
class MeUpdated with _$MeUpdated implements MainEvent {
  const MeUpdated(this.i);

  @override
  final MeDetailed i;
}

@freezed
@JsonSerializable(createToJson: false)
class UrlUploadFinished with _$UrlUploadFinished implements MainEvent {
  const UrlUploadFinished({this.marker, required this.file});

  @override
  final String? marker;

  @override
  final DriveFile file;

  factory UrlUploadFinished.fromJson(Map<String, Object?> json) =>
      _$UrlUploadFinishedFromJson(json);
}

@freezed
class UnreadNotification with _$UnreadNotification implements MainEvent {
  const UnreadNotification(this.notification);

  @override
  final INotificationsResponse notification;
}

@freezed
class NewChatMessage with _$NewChatMessage implements MainEvent {
  const NewChatMessage(this.message);

  @override
  final ChatMessage message;
}

@freezed
class ReceiveFollowRequest with _$ReceiveFollowRequest implements MainEvent {
  const ReceiveFollowRequest(this.user);

  @override
  final UserDetailed user;
}

@freezed
class AnnouncementCreated with _$AnnouncementCreated implements MainEvent {
  const AnnouncementCreated(this.announcement);

  @override
  final AnnouncementsResponse announcement;
}
