import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:unifiedpush/unifiedpush.dart';

part 'unified_push_endpoint_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class UnifiedPushEndpointNotifier extends _$UnifiedPushEndpointNotifier {
  @override
  PushEndpoint? build(String instance) {
    return null;
  }

  // https://pub.dev/packages/riverpod_lint#avoid_public_notifier_properties
  // ignore: use_setters_to_change_properties
  void updateEndpoint(PushEndpoint endpoint) {
    state = endpoint;
  }

  void remove() {
    state = null;
  }
}
