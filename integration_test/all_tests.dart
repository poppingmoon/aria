import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'play_test.dart' as play_test;
import 'timeline_test.dart' as timeline_test;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Play', play_test.main);
  group('timeline', timeline_test.main);
}
