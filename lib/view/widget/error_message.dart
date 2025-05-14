import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../provider/tokens_notifier_provider.dart';
import '../../util/copy_text.dart';

class ErrorMessage extends HookConsumerWidget {
  const ErrorMessage({super.key, this.error, this.stackTrace});

  final Object? error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokens = ref.watch(tokensNotifierProvider).values;
    final isCollapsed = useState(true);
    final showStackTrace = useState(false);
    final error = this.error;
    final message = switch (error) {
      MisskeyException(:final code) => switch (code) {
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
        'CREDENTIAL_REQUIRED' => [t.misskey.signinRequired],
        'SIGNIN_REQUIRED' => [
          t.misskey.thisContentsAreMarkedAsSigninRequiredByAuthor,
        ],
        'AUTHENTICATION_FAILED' => [
          t.misskey.tokenRevoked,
          t.misskey.tokenRevokedDescription,
        ],
        'PERMISSION_DENIED' => [
          t.misskey.permissionDeniedError,
          t.aria.permissionDeniedErrorDescription,
        ],
        _ when error.code.startsWith('TOO_MANY') => [
          t.misskey.youCannotCreateAnymore,
          error.message,
          error.id,
        ],
        _ => [
          error.code,
          error.message,
          if (error.info case final info?)
            const JsonEncoder.withIndent('  ').convert(info),
        ],
      }.join('\n'),
      DioException(:final type, :final response, :final error) => [
        type,
        if (response != null) response,
        if (error != null) error,
      ].join('\n'),
      _ => error.toString(),
    };
    final maskedMessage = tokens.fold(
      message,
      (acc, token) => acc.replaceAll(token, '*' * token.length),
    );
    final maskedStackTrace =
        stackTrace != null
            ? tokens.fold(
              stackTrace.toString(),
              (acc, token) => acc.replaceAll(token, '*' * token.length),
            )
            : null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(t.misskey.error),
          subtitle: InkWell(
            onTap: () => isCollapsed.value = false,
            onLongPress: () => copyToClipboard(context, maskedMessage),
            child: Text(
              maskedMessage,
              overflow: TextOverflow.fade,
              maxLines: isCollapsed.value ? 10 : null,
            ),
          ),
        ),
        if (showStackTrace.value)
          ListTile(
            title: Text(t.aria.stackTrace),
            subtitle: InkWell(
              onLongPress:
                  maskedStackTrace != null
                      ? () => copyToClipboard(context, maskedStackTrace)
                      : null,
              child:
                  maskedStackTrace != null
                      ? Text(maskedStackTrace)
                      : Text(
                        t.misskey.nothing,
                        style: TextStyle(
                          color: DefaultTextStyle.of(
                            context,
                          ).style.color?.withValues(alpha: 0.5),
                        ),
                      ),
            ),
          ),
        TextButton(
          onPressed: () {
            isCollapsed.value = showStackTrace.value;
            showStackTrace.value = !showStackTrace.value;
          },
          child: Text(
            showStackTrace.value ? t.misskey.close : t.aria.showStackTrace,
          ),
        ),
      ],
    );
  }
}
