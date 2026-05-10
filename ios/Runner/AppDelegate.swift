import Flutter
import NotificationSettings
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication
      .LaunchOptionsKey: Any]?,
  ) -> Bool {
    return super.application(
      application,
      didFinishLaunchingWithOptions: launchOptions,
    )
  }

  func didInitializeImplicitFlutterEngine(
    _ engineBridge: FlutterImplicitEngineBridge,
  ) {
    UNUserNotificationCenter.current().delegate =
      self as UNUserNotificationCenterDelegate
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
    let methodChannel = FlutterMethodChannel(
      name: "com.poppingmoon.aria/notification_settings",
      binaryMessenger: engineBridge.applicationRegistrar.messenger(),
    )
    methodChannel.setMethodCallHandler { call, result in
      switch call.method {
      case "saveKeySet":
        guard let args = call.arguments as? [String: Any],
          let account = args["account"] as? String,
          let keySet = args["keySet"] as? String
        else {
          result(
            FlutterError(
              code: "INVALID_ARGUMENT",
              message: "Argument `account` or `keySet` is missing.",
              details: nil,
            ),
          )
          return
        }
        do {
          try NotificationSettingsStorage.saveKeySet(
            account: account,
            keySet: keySet,
          )
        } catch {
          let error = error as NSError
          result(
            FlutterError(
              code: String(error.code),
              message: error.localizedDescription,
              details: error.localizedFailureReason,
            ),
          )
          return
        }
        result(nil)
      case "loadKeySet":
        guard let args = call.arguments as? [String: Any],
          let account = args["account"] as? String
        else {
          result(
            FlutterError(
              code: "INVALID_ARGUMENT",
              message: "Argument `account` is missing.",
              details: nil,
            ),
          )
          return
        }
        do {
          let keySet = try NotificationSettingsStorage.loadKeySet(
            account: account,
          )
          result(keySet)
        } catch {
          let error = error as NSError
          result(
            FlutterError(
              code: String(error.code),
              message: error.localizedDescription,
              details: error.localizedFailureReason,
            ),
          )
        }
      case "deleteKeySet":
        guard let args = call.arguments as? [String: Any],
          let account = args["account"] as? String
        else {
          result(
            FlutterError(
              code: "INVALID_ARGUMENT",
              message: "Argument `account` is missing.",
              details: nil,
            ),
          )
          return
        }
        do {
          try NotificationSettingsStorage.deleteKeySet(account: account)
        } catch {
          let error = error as NSError
          result(
            FlutterError(
              code: String(error.code),
              message: error.localizedDescription,
              details: error.localizedFailureReason,
            ),
          )
          return
        }
        result(nil)
      case "setBadgeCount":
        guard let args = call.arguments as? [String: Any],
          let badgeCount = args["badgeCount"] as? Int
        else {
          result(
            FlutterError(
              code: "INVALID_ARGUMENT",
              message: "Argument `badgeCount` is missing.",
              details: nil,
            ),
          )
          return
        }
        NotificationSettingsStorage.setBadgeCount(
          badgeCount: badgeCount,
        )
        result(nil)
      case "getBadgeCount":
        let badgeCount = NotificationSettingsStorage.getBadgeCount()
        result(badgeCount)
      case "setShowImageInNotification":
        guard let args = call.arguments as? [String: Any],
          let showImageInNotification = args["showImageInNotification"] as? Bool
        else {
          result(
            FlutterError(
              code: "INVALID_ARGUMENT",
              message: "Argument `showImageInNotification` is missing.",
              details: nil,
            ),
          )
          return
        }
        NotificationSettingsStorage.setShowImageInNotification(
          showImageInNotification: showImageInNotification,
        )
        result(nil)
      case "getShowImageInNotification":
        let showImageInNotification =
          NotificationSettingsStorage.getShowImageInNotification()
        result(showImageInNotification)
      case "setShowEmojiInReactionNotification":
        guard let args = call.arguments as? [String: Any],
          let showEmojiInReactionNotification = args[
            "showEmojiInReactionNotification"
          ] as? Bool
        else {
          result(
            FlutterError(
              code: "INVALID_ARGUMENT",
              message:
                "Argument `setShowEmojiInReactionNotification` is missing.",
              details: nil,
            ),
          )
          return
        }
        NotificationSettingsStorage.setShowEmojiInReactionNotification(
          showEmojiInReactionNotification: showEmojiInReactionNotification,
        )
        result(nil)
      case "getShowEmojiInReactionNotification":
        let showEmojiInReactionNotification =
          NotificationSettingsStorage.getShowEmojiInReactionNotification()
        result(showEmojiInReactionNotification)
      default:
        result(FlutterMethodNotImplemented)
      }
    }
  }
}
