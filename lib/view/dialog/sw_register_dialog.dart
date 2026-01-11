import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json5/json5.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constant/fonts.dart';
import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../provider/user_ids_notifier_provider.dart';
import '../widget/mfm.dart';
import '../widget/mfm/code.dart';
import '../widget/url_sheet.dart';
import 'error_message_dialog.dart';

class SwRegisterDialog extends HookConsumerWidget {
  const SwRegisterDialog({
    super.key,
    required this.account,
    required this.request,
  });

  final Account account;
  final SwRegisterRequest request;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final scratchPadUrl = serverUrl.replace(pathSegments: ['scratchpad']);
    final responseText = useState('');
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return AlertDialog(
      title: Text(t.misskey.subscribePushNotification),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            t.aria.openScratchpadAndRunCode(
              scratchpad: WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: InkWell(
                  onTap: () => launchUrl(
                    scratchPadUrl,
                    mode: LaunchMode.externalApplication,
                  ),
                  onLongPress: () => showModalBottomSheet<void>(
                    context: context,
                    builder: (context) =>
                        UrlSheet(url: scratchPadUrl.toString()),
                  ),
                  child: Text(
                    t.misskey.scratchpad,
                    style: TextStyle(color: colors.link),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Code(
            code:
                """
if (USER_USERNAME != '${account.username}') {
  Core:abort(`**${t.misskey.permissionDeniedError}**{Str:lf}${t.aria.pleaseLoginAs(user: '@${account.username}')}`)
}
let params = {
  endpoint: '${request.endpoint}',
  auth: '${request.auth}',
  publickey: '${request.publickey}',
}
let response = Mk:api('sw/register', params)
if (Core:type(response) == 'error') {
  Mk:dialog(response.name, Core:to_str(response.info), 'error')
} else {
  Mk:dialog('${t.aria.pleaseCopyResponse}', ["```json", Json:stringify(response), "```"].join(Str:lf), 'success')
}""",
          ),
          const SizedBox(height: 8.0),
          Text(t.aria.pasteResponseBelow),
          const SizedBox(height: 8.0),
          Shortcuts(
            shortcuts: disablingTextShortcuts,
            child: TextField(
              decoration: InputDecoration(
                hintText: jsonEncode(
                  const SwRegisterResponse(
                    state: SwRegisterResponseState.subscribed,
                    key: '',
                    userId: '',
                    endpoint: '',
                    sendReadMessage: false,
                  ),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: Theme.of(context).inputDecorationTheme.border,
              ),
              style: const TextStyle(
                fontFamily: 'monospace',
                fontFamilyFallback: monospaceFallback,
              ),
              onChanged: (value) => responseText.value = value,
              maxLines: null,
              onTapOutside: (_) => primaryFocus?.unfocus(),
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: responseText.value.isNotEmpty
              ? () async {
                  try {
                    final json = json5Decode(responseText.value);
                    final response = SwRegisterResponse.fromJson(
                      json as Map<String, dynamic>,
                    );
                    if (!context.mounted) return;
                    final userId = ref.read(userIdsNotifierProvider)[account];
                    if (userId != response.userId) {
                      await showDialog<void>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(t.misskey.invalidValue),
                          content: Mfm(
                            account: account,
                            text: t.aria.pleaseLoginAs(
                              user: '@${account.username}',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          actions: [
                            ElevatedButton(
                              autofocus: true,
                              onPressed: () => context.pop(),
                              child: Text(t.misskey.gotIt),
                            ),
                          ],
                        ),
                      );
                      return;
                    }
                    if (request.endpoint != response.endpoint) {
                      await showDialog<void>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(t.aria.invalidEndpoint),
                          content: Text(t.aria.invalidEndpointDescription),
                          actions: [
                            ElevatedButton(
                              autofocus: true,
                              onPressed: () => context.pop(),
                              child: Text(t.misskey.gotIt),
                            ),
                          ],
                        ),
                      );
                      return;
                    }
                    context.pop(response);
                  } catch (error, stackTrace) {
                    await showErrorMessageDialog(
                      context,
                      error: error,
                      stackTrace: stackTrace,
                    );
                  }
                }
              : null,
          child: Text(t.misskey.ok),
        ),
      ],
      scrollable: true,
    );
  }
}
