import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'apns_push_connector_provider.dart';

part 'apns_token_provider.g.dart';

@riverpod
Stream<String> apnsToken(Ref ref) async* {
  final connector = ref.watch(apnsPushConnectorProvider);
  if (connector.token.value case final token?) {
    yield token;
  }

  final controller = StreamController<String>();

  void callback() {
    if (connector.token.value case final token?) {
      controller.add(token);
    }
  }

  connector.token.addListener(callback);
  ref.onDispose(() => connector.token.removeListener(callback));

  yield* controller.stream;
}
