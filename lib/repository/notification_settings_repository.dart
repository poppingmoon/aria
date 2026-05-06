import 'package:flutter/services.dart';
import 'package:webpush_encryption/webpush_encryption.dart';

import '../model/account.dart';

class NotificationSettingsRepository {
  const NotificationSettingsRepository();

  static const _channel = MethodChannel(
    'com.poppingmoon.aria/notification_settings',
  );

  Future<void> saveKeySet(Account account, WebPushKeySet keySet) async {
    await _channel.invokeMethod('saveKeySet', {
      'account': account.toString(),
      'keySet': keySet.serialize,
    });
  }

  Future<WebPushKeySet?> loadKeySet(Account account) async {
    final value = await _channel.invokeMethod<String>('loadKeySet', {
      'account': account.toString(),
    });
    if (value != null) {
      return WebPushKeySet.deserialize(value);
    }
    return null;
  }

  Future<void> deleteKeySet(Account account) async {
    await _channel.invokeMethod('deleteKeySet', {
      'account': account.toString(),
    });
  }

  Future<void> setShowImageInNotification(bool showImageInNotification) async {
    await _channel.invokeMethod('setShowImageInNotification', {
      'showImageInNotification': showImageInNotification,
    });
  }

  Future<bool?> getShowImageInNotification() {
    return _channel.invokeMethod('getShowImageInNotification');
  }

  Future<void> setShowEmojiInReactionNotification(
    bool showEmojiInReactionNotification,
  ) async {
    await _channel.invokeMethod('setShowEmojiInReactionNotification', {
      'showEmojiInReactionNotification': showEmojiInReactionNotification,
    });
  }

  Future<bool?> getShowEmojiInReactionNotification() {
    return _channel.invokeMethod('getShowEmojiInReactionNotification');
  }
}
