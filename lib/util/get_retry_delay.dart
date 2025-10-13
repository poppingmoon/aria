import 'dart:math';

import 'package:dio/dio.dart';
import 'package:misskey_dart/misskey_dart.dart';

Duration? getRetryDelay(
  int retryCount,
  Object error, {
  int maxRetries = 10,
  Duration minDelay = const Duration(milliseconds: 200),
  Duration maxDelay = const Duration(minutes: 1),
}) {
  if (retryCount >= maxRetries) {
    return null;
  }
  final delay = _getRetryDelay(retryCount, error, minDelay);
  if (delay == null || delay > maxDelay) {
    return null;
  } else if (delay < minDelay) {
    return minDelay;
  } else {
    return delay;
  }
}

Duration? _getRetryDelay(int retryCount, Object error, Duration minDelay) {
  if (error case MisskeyException(code: 'RATE_LIMIT_EXCEEDED')) {
    if (error.info case {'resetMs': final int resetMs}) {
      return DateTime.fromMillisecondsSinceEpoch(
        resetMs,
      ).difference(DateTime.now());
    }
    return _exponentialBackoff(retryCount, minDelay);
  } else if (error case DioException(:final response?)) {
    if (response.statusCode case 429 || 503) {
      if (response.headers.value('Retry-After') case final retryAfter?) {
        if (int.tryParse(retryAfter) case final delaySeconds?) {
          return Duration(seconds: delaySeconds);
        }
      }
      return _exponentialBackoff(retryCount, minDelay);
    }
  }
  return null;
}

Duration _exponentialBackoff(int retryCount, Duration minDelay) {
  return minDelay * pow(2, retryCount) * (1 + Random().nextDouble());
}
