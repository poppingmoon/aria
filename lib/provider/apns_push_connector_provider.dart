import 'package:flutter_apns_only/flutter_apns_only.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'apns_push_connector_provider.g.dart';

@Riverpod(keepAlive: true)
ApnsPushConnectorOnly apnsPushConnector(Ref ref) {
  return ApnsPushConnectorOnly();
}
