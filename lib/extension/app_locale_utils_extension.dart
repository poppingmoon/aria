import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';

extension AppLocaleUtilsExtension on AppLocaleUtils {
  AppLocale findDeviceLocale() {
    final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
    if (deviceLocale.languageCode == 'zh' &&
        deviceLocale.scriptCode == 'Hant') {
      return AppLocale.zhTw;
    }
    return parseLocaleParts(
      languageCode: deviceLocale.languageCode,
      scriptCode: deviceLocale.scriptCode,
      countryCode: deviceLocale.countryCode,
    );
  }
}
