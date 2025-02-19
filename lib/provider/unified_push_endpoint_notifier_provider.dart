import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'unified_push_endpoint_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class UnifiedPushEndpointNotifier extends _$UnifiedPushEndpointNotifier {
  @override
  String? build(String instance) {
    return null;
  }

  // https://pub.dev/packages/riverpod_lint#avoid_public_notifier_properties
  // ignore: use_setters_to_change_properties
  void updateEndpoint(String endpoint) {
    state = endpoint;
  }

  void remove() {
    state = null;
  }
}
