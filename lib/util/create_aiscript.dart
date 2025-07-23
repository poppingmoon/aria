import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../model/account.dart';
import '../provider/aiscript_storage_notifier_provider.dart';
import '../provider/api/i_notifier_provider.dart';
import '../provider/emojis_notifier_provider.dart';
import '../provider/server_url_notifier_provider.dart';
import '../rust/api/aiscript.dart';
import '../rust/api/aiscript/api.dart';
import '../rust/api/aiscript/play.dart';
import '../rust/api/aiscript/ui.dart';
import '../view/dialog/aiscript_dialog.dart';
import '../view/dialog/text_field_dialog.dart';
import 'nyaize.dart';
import 'show_toast.dart';

Future<AiScript> createAiScript(
  WidgetRef ref, {
  required Account account,
  String? host,
  required String storageKey,
  required Uri url,
  ValueNotifier<Map<String, AsUiComponent>>? components,
  String? playId,
}) async {
  final locale = Localizations.localeOf(ref.context).toLanguageTag();
  final serverUrl = ref.read(serverUrlNotifierProvider(account.host));
  MeDetailed? i;
  try {
    i = await ref.read(iNotifierProvider(account).future);
  } catch (_) {}
  List<Emoji>? emojis;
  try {
    final response = await ref.read(
      emojisNotifierProvider(account.host).future,
    );
    emojis = response.values.toList();
  } catch (_) {}
  if (components != null) {
    components.value = {};
  }

  return AiScript.newInstance(
    read: (prompt) async {
      final result = await showTextFieldDialog(
        ref.context,
        title: Text(prompt),
      );
      return result ?? '';
    },
    write: (_) {},
    api: AsApiLib(
      userId: i?.id,
      userName: i?.name,
      userUsername: i?.username,
      customEmojis: jsonEncode(emojis ?? []),
      locale: locale,
      serverUrl: serverUrl.toString(),
      dialog: (title, text, type) => showDialog(
        context: ref.context,
        builder: (context) => AiScriptDialog(
          account: host == null || account.host == host
              ? account
              : Account(host: host),
          title: title,
          text: text,
          type: type,
        ),
      ),
      confirm: (title, text, type) async {
        final result = await showDialog<bool>(
          context: ref.context,
          builder: (context) => AiScriptDialog(
            account: host == null || account.host == host
                ? account
                : Account(host: host),
            title: title,
            text: text,
            type: type,
            showCancelButton: true,
          ),
        );
        return result ?? false;
      },
      toast: (text) => showToast(context: ref.context, message: text),
      api: (ep, param, token) async {
        final json = jsonDecode(param);
        final misskey = Misskey(serverUrl: serverUrl, token: token);
        try {
          final response = await misskey.apiService.post<dynamic>(
            ep,
            json is Map<String, dynamic> ? json : {},
            excludeRemoveNullPredicate: (_, _) => true,
          );
          return (jsonEncode(response), null);
        } on MisskeyException catch (e) {
          if (host != null && account.host != host) {
            final serverUrl = ref.read(serverUrlNotifierProvider(host));
            final misskey = Misskey(serverUrl: serverUrl);
            try {
              final response = await misskey.apiService.post<dynamic>(
                ep,
                json is Map<String, dynamic> ? json : {},
                excludeRemoveNullPredicate: (_, _) => true,
              );
              return (jsonEncode(response), null);
            } catch (e) {
              return ('', e.toString());
            }
          }
          return ('', e.toString());
        } catch (e) {
          return ('', e.toString());
        }
      },
      save: (key, value) => ref
          .read(aiscriptStorageNotifierProvider(account).notifier)
          .save('$storageKey:$key', value),
      load: (key) =>
          ref
              .read(aiscriptStorageNotifierProvider(account).notifier)
              .load('$storageKey:$key') ??
          '',
      remove: (key) => ref
          .read(aiscriptStorageNotifierProvider(account).notifier)
          .remove('$storageKey:$key'),
      url: url.toString(),
      nyaize: nyaize,
    ),
    ui: components != null
        ? AsUiLib(
            onUpdate: (id, component) =>
                components.value = {...components.value, id: component},
          )
        : null,
    play: playId != null
        ? AsPlayLib(thisId: playId, thisUrl: url.toString())
        : null,
  );
}
