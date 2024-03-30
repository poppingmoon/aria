import 'package:misskey_dart/misskey_dart.dart';

sealed class MainEvent {}

class Notification implements MainEvent {
  const Notification(this.notification);

  final INotificationsResponse notification;
}

class Mention implements MainEvent {
  const Mention(this.note);

  final Note note;
}

class UnreadNotification implements MainEvent {
  const UnreadNotification(this.notification);

  final INotificationsResponse notification;
}

class MeUpdated implements MainEvent {
  const MeUpdated(this.i);

  final MeDetailed i;
}

class ReceiveFollowRequest implements MainEvent {
  const ReceiveFollowRequest(this.user);

  final UserDetailed user;
}

class AnnouncementCreated implements MainEvent {
  const AnnouncementCreated(this.announcement);

  final AnnouncementsResponse announcement;
}
