import 'dart:io';

import 'package:flutter/foundation.dart';

void overrideDefaultTargetPlatform([TargetPlatform? platform]) {
  if (platform != null) {
    debugDefaultTargetPlatformOverride = platform;
  } else if (Platform.isAndroid) {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
  } else if (Platform.isIOS) {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  } else if (Platform.isLinux) {
    debugDefaultTargetPlatformOverride = TargetPlatform.linux;
  } else if (Platform.isMacOS) {
    debugDefaultTargetPlatformOverride = TargetPlatform.macOS;
  } else if (Platform.isWindows) {
    debugDefaultTargetPlatformOverride = TargetPlatform.windows;
  }

  // https://github.com/flutter/flutter/issues/110488
  // addTearDown(() => debugDefaultTargetPlatformOverride = null);
}
