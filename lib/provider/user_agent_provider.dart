import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_agent_provider.g.dart';

@riverpod
FutureOr<String?> userAgent(Ref ref) {
  return switch (defaultTargetPlatform) {
    TargetPlatform.android ||
    TargetPlatform.iOS ||
    TargetPlatform.macOS => InAppWebViewController.getDefaultUserAgent(),
    _ => null,
  };
}
