import NotificationSettings
import UserNotifications

class NotificationService: UNNotificationServiceExtension {

  var contentHandler: ((UNNotificationContent) -> Void)?
  var bestAttemptContent: UNMutableNotificationContent?

  override func didReceive(
    _ request: UNNotificationRequest,
    withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void,
  ) {
    self.contentHandler = contentHandler
    bestAttemptContent =
      request.content.mutableCopy() as? UNMutableNotificationContent

    if let bestAttemptContent = bestAttemptContent {
      let account = request.content.userInfo["account"] as? String
      if let account = account {
        bestAttemptContent.subtitle = account
        bestAttemptContent.threadIdentifier = account
      }

      let notification: [String: Any]? =
        switch request.content.userInfo["payload"] {
        case let payload as [String: Any]:
          payload
        case let message as String:
          if let account = account,
            let keySet = try? NotificationSettingsStorage.loadKeySet(
              account: account
            ),
            let keySet = try? WebPushKeySet(string: keySet),
            let message = Data(base64Encoded: message),
            let payload = try? WebPush.decryptMessage(
              keySet: keySet,
              message: message,
            )
          {
            try? JSONSerialization.jsonObject(with: payload)
              as? [String: Any]
          } else {
            nil
          }
        default:
          nil
        }

      if let notification = notification {
        bestAttemptContent.userInfo["payload"] = notification
        Task {
          await NotificationUpdater(bestAttemptContent: bestAttemptContent)
            .update(notification: notification)
          contentHandler(bestAttemptContent)
        }
      } else {
        contentHandler(bestAttemptContent)
      }
    }
  }

  override func serviceExtensionTimeWillExpire() {
    if let contentHandler = contentHandler,
      let bestAttemptContent = bestAttemptContent
    {
      contentHandler(bestAttemptContent)
    }
  }
}
