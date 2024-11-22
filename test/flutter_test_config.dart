import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

FutureOr<void> testExecutable(FutureOr<void> Function() testMain) {
  WidgetController.hitTestWarningShouldBeFatal = true;

  return testMain();
}
