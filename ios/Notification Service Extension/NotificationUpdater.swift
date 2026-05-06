import CoreServices
import NotificationSettings
import UserNotifications

struct NotificationUpdater {
  let bestAttemptContent: UNMutableNotificationContent

  func update(notification: [String: Any]) async {
    switch notification["type"] as? String {
    case "notification":
      guard let body = notification["body"] as? [String: Any] else {
        return
      }
      switch body["type"] as? String {
      case "follow":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.youWereFollowed",
          arguments: nil,
        )
        if let user = body["user"] as? [String: Any] {
          if let name = getNameOrUsername(user: user) {
            bestAttemptContent.body = name
          }
          if NotificationSettingsStorage.getShowImageInNotification() ?? true,
            let avatarUrl = user["avatarUrl"] as? String
          {
            try? await addImage(url: avatarUrl)
          }
        }
      case "mention":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.youGotMention",
          arguments: [
            (body["user"] as? [String: Any]).flatMap { user in
              getNameOrUsername(user: user)
            } ?? ""
          ],
        )
        if let note = body["note"] as? [String: Any],
          let text = note["text"] as? String
        {
          bestAttemptContent.body = text
        }
        if NotificationSettingsStorage.getShowImageInNotification() ?? true,
          let user = body["user"] as? [String: Any],
          let avatarUrl = user["avatarUrl"] as? String
        {
          try? await addImage(url: avatarUrl)
        }
      case "reply":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.youGotReply",
          arguments: [
            (body["user"] as? [String: Any]).flatMap { user in
              getNameOrUsername(user: user)
            } ?? ""
          ],
        )
        if let note = body["note"] as? [String: Any],
          let text = note["text"] as? String
        {
          bestAttemptContent.body = text
        }
        if NotificationSettingsStorage.getShowImageInNotification() ?? true,
          let user = body["user"] as? [String: Any],
          let avatarUrl = user["avatarUrl"] as? String
        {
          try? await addImage(url: avatarUrl)
        }
      case "renote":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.youRenoted",
          arguments: [
            (body["user"] as? [String: Any]).flatMap { user in
              getNameOrUsername(user: user)
            } ?? ""
          ],
        )
        if let note = body["note"] as? [String: Any],
          let text = note["text"] as? String
        {
          bestAttemptContent.body = text
        }
        if NotificationSettingsStorage.getShowImageInNotification() ?? true,
          let user = body["user"] as? [String: Any],
          let avatarUrl = user["avatarUrl"] as? String
        {
          try? await addImage(url: avatarUrl)
        }
      case "quote":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.youGotQuote",
          arguments: [
            (body["user"] as? [String: Any]).flatMap { user in
              getNameOrUsername(user: user)
            } ?? ""
          ],
        )
        if let note = body["note"] as? [String: Any],
          let text = note["text"] as? String
        {
          bestAttemptContent.body = text
        }
        if NotificationSettingsStorage.getShowImageInNotification() ?? true,
          let user = body["user"] as? [String: Any],
          let avatarUrl = user["avatarUrl"] as? String
        {
          try? await addImage(url: avatarUrl)
        }
      case "note":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.newNote",
          arguments: [
            (body["user"] as? [String: Any]).flatMap { user in
              getNameOrUsername(user: user)
            } ?? ""
          ],
        )
        if let note = body["note"] as? [String: Any],
          let text = note["text"] as? String
        {
          bestAttemptContent.body = text
        }
        if NotificationSettingsStorage.getShowImageInNotification() ?? true,
          let user = body["user"] as? [String: Any],
          let avatarUrl = user["avatarUrl"] as? String
        {
          try? await addImage(url: avatarUrl)
        }
      case "reaction":
        bestAttemptContent.title = [
          (body["reaction"] as? String)?.split(separator: "@").first?
            .replacingOccurrences(of: ":", with: ""),
          (body["user"] as? [String: Any]).flatMap { user in
            getNameOrUsername(user: user)
          },
        ].compactMap { $0 }.joined(separator: " ")
        if let note = body["note"] as? [String: Any],
          let text = note["text"] as? String
        {
          bestAttemptContent.body = text
        }
        if NotificationSettingsStorage.getShowImageInNotification() ?? true {
          if NotificationSettingsStorage.getShowEmojiInReactionNotification()
            ?? false
          {
            if let reaction = body["reaction"] as? String {
              if reaction.starts(with: ":") {
                let emoji = reaction.replacingOccurrences(of: ":", with: "")
                if let host =
                  (bestAttemptContent.userInfo["account"] as? String)?
                  .split(separator: "@").last
                {
                  let url =
                    ((body["emojis"] as? [String: Any])?[emoji]
                    ?? ((body["reactionEmojis"] as? [String: Any])?[emoji])
                    as? String)
                    .map { url in
                      "https://\(host)/proxy/image.webp?url=\(url)&emoji=1"
                    }
                    ?? "https://\(host)/emoji/\(emoji).webp"
                  try? await addImage(url: url)
                }
              } else {
                let emoji =
                  !reaction.contains("\u{200D}")
                  ? reaction.replacingOccurrences(of: "\u{FE0F}", with: "")
                  : reaction
                let unicode = emoji.unicodeScalars.map { scalar in
                  String(format: "%x", scalar.value)
                }.joined(separator: "-")
                let url =
                  "https://raw.githubusercontent.com/jdecked/twemoji/main/"
                  + "assets/72x72/\(unicode).png"
                try? await addImage(url: url)
              }
            }
          } else if let user = body["user"] as? [String: Any],
            let avatarUrl = user["avatarUrl"] as? String
          {
            try? await addImage(url: avatarUrl)
          }
        }
      case "receiveFollowRequest":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.youReceivedFollowRequest",
          arguments: nil,
        )
        if let user = body["user"] as? [String: Any] {
          if let name = getNameOrUsername(user: user) {
            bestAttemptContent.body = name
          }
          if NotificationSettingsStorage.getShowImageInNotification() ?? true,
            let avatarUrl = user["avatarUrl"] as? String
          {
            try? await addImage(url: avatarUrl)
          }
        }
      case "followRequestAccepted":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.yourFollowRequestAccepted",
          arguments: nil,
        )
        if let user = body["user"] as? [String: Any] {
          if let name = getNameOrUsername(user: user) {
            bestAttemptContent.body = name
          }
          if NotificationSettingsStorage.getShowImageInNotification() ?? true,
            let avatarUrl = user["avatarUrl"] as? String
          {
            try? await addImage(url: avatarUrl)
          }
        }
      case "achievementEarned":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.achievementEarned",
          arguments: nil,
        )
        if let achievement = body["achievement"] as? String {
          bestAttemptContent.body = NSString.localizedUserNotificationString(
            forKey: "_achievements._types._\(achievement).title",
            arguments: nil,
          )
        }
      case "login":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.login",
          arguments: nil,
        )
      case "exportCompleted":
        if let exportedEntity = body["exportedEntity"] as? String {
          bestAttemptContent.title = NSString.localizedUserNotificationString(
            forKey:
              "_notification.exportOf\(exportedEntity.capitalized)Completed",
            arguments: nil,
          )
        }
      case "pollEnded":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.pollEnded",
          arguments: nil,
        )
        if let note = body["note"] as? [String: Any],
          let text = note["text"] as? String
        {
          bestAttemptContent.body = text
        }
      case "roleAssigned":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.roleAssigned",
          arguments: nil,
        )
        if let role = body["role"] as? [String: Any] {
          if let name = role["name"] as? String {
            bestAttemptContent.body = name
          }
          if NotificationSettingsStorage.getShowImageInNotification() ?? true,
            let iconUrl = role["iconUrl"] as? String
          {
            try? await addImage(url: iconUrl)
          }
        }
      case "chatRoomInvitationReceived":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.chatRoomInvitationReceived",
          arguments: nil,
        )
        if let invitation = body["invitation"] as? [String: Any],
          let room = invitation["room"] as? [String: Any],
          let name = room["name"] as? String
        {
          bestAttemptContent.body = name
        }
      case "createToken":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.createToken",
          arguments: nil,
        )
        bestAttemptContent.body = NSString.localizedUserNotificationString(
          forKey: "_notification.createTokenDescription",
          arguments: nil,
        )
      case "scheduledNotePosted":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.scheduledNotePosted",
          arguments: nil,
        )
        if let note = body["note"] as? [String: Any],
          let text = note["text"] as? String
        {
          bestAttemptContent.body = text
        }
      case "scheduledNotePostFailed":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.scheduledNotePostFailed",
          arguments: nil,
        )
      case "scheduleNote":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.scheduledNotePostFailed",
          arguments: nil,
        )
        if let errorType = body["errorType"] as? String {
          bestAttemptContent.body = errorType
        }
      case "scheduledNoteError":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.scheduledNotePostFailed",
          arguments: nil,
        )
        if let draft = body["draft"] as? [String: Any],
          let reason = draft["reason"] as? String
        {
          bestAttemptContent.body = reason
        }
      case "noteScheduled":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.noteScheduled",
          arguments: nil,
        )
        if let draft = body["draft"] as? [String: Any],
          let data = draft["data"] as? [String: Any],
          let text = data["text"] as? String
        {
          bestAttemptContent.body = text
        }
      case "app":
        if let header = body["header"] as? String {
          bestAttemptContent.title = header
          if let body = body["body"] as? String {
            bestAttemptContent.body = body
          }
        } else if let body = body["body"] as? String {
          bestAttemptContent.title = body
        }
        if NotificationSettingsStorage.getShowImageInNotification() ?? true,
          let icon = body["icon"] as? String
        {
          try? await addImage(url: icon)
        }
      case "test":
        bestAttemptContent.title = NSString.localizedUserNotificationString(
          forKey: "_notification.testNotification",
          arguments: nil,
        )
        bestAttemptContent.body = NSString.localizedUserNotificationString(
          forKey: "_notification.notificationWillBeDisplayedLikeThis",
          arguments: nil,
        )
      default:
        return
      }
    case "newChatMessage":
      guard let body = notification["body"] as? [String: Any] else {
        return
      }
      if body["toRoomId"] != nil {
        bestAttemptContent.title = [
          (body["toRoom"] as? [String: Any]).flatMap { toRoom in
            toRoom["name"] as? String
          },
          (body["user"] as? [String: Any]).flatMap { user in
            getNameOrUsername(user: user)
          },
        ].compactMap { $0 }.joined(separator: ": ")
      } else if let user = body["user"] as? [String: Any],
        let name = getNameOrUsername(user: user)
      {
        bestAttemptContent.title = name
      }
      if let text = body["text"] as? String {
        bestAttemptContent.body = text
      }
      if NotificationSettingsStorage.getShowImageInNotification() ?? true,
        let fromUser = body["fromUser"] as? [String: Any],
        let avatarUrl = fromUser["avatarUrl"] as? String
      {
        try? await addImage(url: avatarUrl)
      }
    default:
      return
    }
  }

  func getNameOrUsername(user: [String: Any]) -> String? {
    user["name"] as? String ?? user["username"] as? String
  }

  func addImage(url: String) async throws {
    guard let url = URL(string: url) else {
      return
    }
    if #available(iOS 15.0, *) {
      let (path, response) = try await URLSession.shared.download(
        from: url
      )
      let fileName = UUID().uuidString.appending(
        response.suggestedFilename ?? url.lastPathComponent
      )
      let target =
        if #available(iOS 16.0, *) {
          URL(filePath: NSTemporaryDirectory().appending(fileName))
        } else {
          URL(fileURLWithPath: NSTemporaryDirectory().appending(fileName))
        }
      try FileManager.default.moveItem(at: path, to: target)
      if let response = response as? HTTPURLResponse,
        200..<300 ~= response.statusCode
      {

        let attachment = try UNNotificationAttachment(
          identifier: fileName,
          url: target,
        )
        bestAttemptContent.attachments.append(attachment)
      }
    } else {
      let (data, response) = try await URLSession.shared.data(from: url)
      if let response = response as? HTTPURLResponse,
        200..<300 ~= response.statusCode
      {
        let fileName =
          UUID().uuidString.appending(
            response.suggestedFilename ?? url.lastPathComponent
          )
        let path = URL(
          fileURLWithPath: NSTemporaryDirectory().appending(fileName)
        )
        try data.write(to: path)
        let attachment = try UNNotificationAttachment(
          identifier: fileName,
          url: path,
        )
        bestAttemptContent.attachments.append(attachment)
      }
    }
  }
}
