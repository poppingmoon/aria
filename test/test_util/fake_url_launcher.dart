import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:url_launcher_platform_interface/link.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

class FakeUrlLauncher
    with MockPlatformInterfaceMixin
    implements UrlLauncherPlatform {
  void Function(String url, LaunchOptions options)? onLaunchUrl;

  @override
  Future<bool> canLaunch(String url) async {
    return true;
  }

  @override
  Future<void> closeWebView() async {}

  @override
  Future<bool> launch(
    String url, {
    required bool useSafariVC,
    required bool useWebView,
    required bool enableJavaScript,
    required bool enableDomStorage,
    required bool universalLinksOnly,
    required Map<String, String> headers,
    String? webOnlyWindowName,
  }) async {
    return true;
  }

  @override
  Future<bool> launchUrl(String url, LaunchOptions options) async {
    onLaunchUrl?.call(url, options);
    return true;
  }

  @override
  LinkDelegate? get linkDelegate =>
      (_) => Container();

  @override
  Future<bool> supportsCloseForMode(PreferredLaunchMode mode) async {
    return true;
  }

  @override
  Future<bool> supportsMode(PreferredLaunchMode mode) async {
    return true;
  }
}
