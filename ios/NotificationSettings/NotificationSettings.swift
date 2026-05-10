import Foundation
import Security

public enum NotificationSettingsStorageError: Error {
  case save
  case load
  case delete
}

public struct NotificationSettingsStorage {
  private static let service = "web_push_key_set"
  private static let group =
    "group.com.poppingmoon.aria.Notification-Service-Extension"

  public static func saveKeySet(account: String, keySet: String) throws {
    let data = Data(keySet.utf8)
    let query =
      [
        kSecClass: kSecClassGenericPassword,
        kSecAttrService: service,
        kSecAttrAccount: account,
        kSecAttrAccessGroup: group,
        kSecAttrAccessible: kSecAttrAccessibleAfterFirstUnlock,
        kSecValueData: data,
      ] as CFDictionary
    let status = SecItemAdd(query, nil)
    switch status {
    case errSecSuccess:
      return
    case errSecDuplicateItem:
      let status = SecItemUpdate(query, [kSecValueData: data] as CFDictionary)
      if status == errSecSuccess {
        return
      }
      fallthrough
    default:
      throw NotificationSettingsStorageError.save
    }
  }

  public static func loadKeySet(account: String) throws -> String? {
    let query =
      [
        kSecClass: kSecClassGenericPassword,
        kSecAttrService: service,
        kSecAttrAccount: account,
        kSecAttrAccessGroup: group,
        kSecReturnData: true,
      ] as CFDictionary
    var item: CFTypeRef?
    let status = SecItemCopyMatching(query, &item)
    switch status {
    case errSecSuccess:
      guard let data = item as? Data else {
        return nil
      }
      return String(data: data, encoding: String.Encoding.utf8)
    case errSecItemNotFound:
      return nil
    default:
      throw NotificationSettingsStorageError.load
    }
  }

  public static func deleteKeySet(account: String) throws {
    let query =
      [
        kSecClass: kSecClassGenericPassword,
        kSecAttrService: service,
        kSecAttrAccount: account,
        kSecAttrAccessGroup: group,
      ] as CFDictionary
    let status = SecItemDelete(query)
    switch status {
    case errSecSuccess:
      return
    default:
      throw NotificationSettingsStorageError.delete
    }
  }

  public static func setBadgeCount(badgeCount: Int) {
    UserDefaults(suiteName: group)?.set(
      badgeCount,
      forKey: "badgeCount",
    )
  }

  public static func getBadgeCount() -> Int? {
    UserDefaults(suiteName: group)?.integer(forKey: "badgeCount")
  }

  public static func setShowImageInNotification(showImageInNotification: Bool) {
    UserDefaults(suiteName: group)?.set(
      showImageInNotification,
      forKey: "showImageInNotification",
    )
  }

  public static func getShowImageInNotification() -> Bool? {
    UserDefaults(suiteName: group)?.object(forKey: "showImageInNotification")
      as? Bool
  }

  public static func setShowEmojiInReactionNotification(
    showEmojiInReactionNotification: Bool
  ) {
    UserDefaults(suiteName: group)?.set(
      showEmojiInReactionNotification,
      forKey: "showEmojiInReactionNotification",
    )
  }

  public static func getShowEmojiInReactionNotification() -> Bool? {
    UserDefaults(suiteName: group)?.object(
      forKey: "showEmojiInReactionNotification",
    ) as? Bool
  }
}
