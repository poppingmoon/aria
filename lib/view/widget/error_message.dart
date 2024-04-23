import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:misskey_dart/misskey_dart.dart';

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

  @override
  Widget build(BuildContext context) {
    final showStackTrace = useState(false);
    final error = this.error;
    final message = error is MisskeyException
        ? switch (error.code) {
            'INTERNAL_ERROR' => [
                t.misskey.internalServerError,
                t.misskey.internalServerErrorDescription,
                const JsonEncoder.withIndent('  ').convert(error.info),
              ],
            'RATE_LIMIT_EXCEEDED' => [
                t.misskey.cannotPerformTemporary,
                t.misskey.cannotPerformTemporaryDescription,
              ],
            'INVALID_PARAM' => [
                t.misskey.invalidParamError,
                t.misskey.invalidParamErrorDescription,
                if (error.info != null)
                  const JsonEncoder.withIndent('  ').convert(error.info),
              ],
            'ROLE_PERMISSION_DENIED' => [
                t.misskey.permissionDeniedError,
                t.misskey.permissionDeniedErrorDescription,
              ],
            'RECURSIVE_NESTING' => [t.misskey.circularReferenceFolder],
            'HAS_CHILD_FILES_OR_FOLDERS' => [t.misskey.hasChildFilesOrFolders],
            'NO_SUCH_ROLE' => [t.misskey.noRole],
            'NAME_ALREADY_EXISTS' => [t.misskey.pages_.nameAlreadyExists],
            'NO_SUCH_USER' || 'USER_NOT_FOUND' => [t.misskey.noSuchUser],
            _ => error.code.startsWith('TOO_MANY')
                ? [
                    t.misskey.youCannotCreateAnymore,
                    error.message,
                    error.id,
                  ]
                : [
                    error.code,
                    error.message,
                    if (error.info != null)
                      const JsonEncoder.withIndent('  ').convert(error.info),
                  ]
          }
            .join('\n')
        : error.toString();

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
              onLongPress: () =>
                  copyToClipboard(context, stackTrace.toString()),
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
