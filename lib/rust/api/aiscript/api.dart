// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.39.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `register`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AsApiLib>>
abstract class AsApiLib implements RustOpaqueInterface {
  factory AsApiLib(
          {String? userId,
          String? userName,
          String? userUsername,
          required String customEmojis,
          required String locale,
          required String serverUrl,
          required FutureOr<void> Function(String, String, String) dialog,
          required FutureOr<bool> Function(String, String, String) confirm,
          String? token,
          required FutureOr<(String, String?)> Function(String, String, String?)
              api,
          required FutureOr<void> Function(String, String) save,
          required FutureOr<String> Function(String) load,
          required String url,
          required FutureOr<String> Function(String) nyaize}) =>
      RustLib.instance.api.crateApiAiscriptApiAsApiLibNew(
          userId: userId,
          userName: userName,
          userUsername: userUsername,
          customEmojis: customEmojis,
          locale: locale,
          serverUrl: serverUrl,
          dialog: dialog,
          confirm: confirm,
          token: token,
          api: api,
          save: save,
          load: load,
          url: url,
          nyaize: nyaize);
}