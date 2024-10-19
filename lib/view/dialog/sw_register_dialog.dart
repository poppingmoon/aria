import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json5/json5.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/future_with_dialog.dart';
import '../widget/mfm/code.dart';
import '../widget/url_sheet.dart';
import 'message_dialog.dart';

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
    final responseText = useState('');
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

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
                    Uri.https(account.host, 'scratchpad'),
                    mode: LaunchMode.externalApplication,
                  ),
                  onLongPress: () => showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => UrlSheet(
                      url: Uri.https(account.host, 'scratchpad').toString(),
                    ),
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
            code: """
let params = {
  endpoint: '${request.endpoint}',
  auth: '${request.auth}',
  publickey: '${request.publickey}',
}
let response = Mk:api('sw/register', params)
if (Core:type(response) == 'error') {
  Mk:dialog(response.name, Core:to_str(response.info), 'error')
} else {
  Mk:dialog(
    '${t.aria.pleaseCopyResponse}',
    ["```json", Json:stringify(response), "```"].join(Str:lf),
    'success'
  )
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
              style: const TextStyle(fontFamily: 'monospace'),
              onChanged: (value) => responseText.value = value,
              maxLines: null,
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
                    final i = await futureWithDialog(
                      context,
                      ref.read(iNotifierProvider(account).future),
                    );
                    if (!context.mounted) return;
                    if (i?.id == response.userId &&
                        request.endpoint == response.endpoint) {
                      context.pop(response);
                      return;
                    }
                  } catch (_) {}
                  await showMessageDialog(context, t.misskey.invalidValue);
                }
              : null,
          child: Text(t.misskey.ok),
        ),
      ],
      scrollable: true,
    );
  }
}
