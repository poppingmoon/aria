import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../i18n/strings.g.dart';
import '../../util/copy_text.dart';

class ErrorMessage extends HookWidget {
  const ErrorMessage({
    super.key,
    this.error,
    this.stackTrace,
  });

  final Object? error;
  final StackTrace? stackTrace;

  String _getErrorMessage(Object? error) {
    return switch (error) {
      DioException(:final error?) => _getErrorMessage(error),
      DioException(
        response: Response(data: {'error': {'message': final String message}})
      ) =>
        message,
      WebSocketChannelException(:final inner?) => _getErrorMessage(inner),
      WebSocketChannelException(:final message?) => message,
      WebSocketException(:final message) => message,
      _ => error.toString(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final showStackTrace = useState(false);
    final message = _getErrorMessage(error);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(t.misskey.error),
          subtitle: InkWell(
            onLongPress: () => copyToClipboard(context, message),
            child: Text(message),
          ),
        ),
        if (showStackTrace.value)
          ListTile(
            title: Text(t.aria.stackTrace),
            subtitle: InkWell(
              onLongPress: () => copyToClipboard(context, message),
              child: Text(stackTrace.toString()),
            ),
          ),
        TextButton(
          onPressed: () => showStackTrace.value = !showStackTrace.value,
          child: Text(
            showStackTrace.value ? t.misskey.close : t.aria.showStackTrace,
          ),
        ),
      ],
    );
  }
}
