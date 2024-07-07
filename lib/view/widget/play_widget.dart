import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:share_plus/share_plus.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/aiscript_storage_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/play_notifier_provider.dart';
import '../../provider/api/post_notifier_provider.dart';
import '../../provider/dio_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../rust/api/aiscript.dart';
import '../../rust/api/aiscript/api.dart';
import '../../rust/api/aiscript/play.dart';
import '../../rust/api/aiscript/ui.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../../util/nyaize.dart';
import '../dialog/error_message_dialog.dart';
import '../dialog/text_field_dialog.dart';
import 'account_preview.dart';
import 'as_ui_widget.dart';
import 'like_button.dart';
import 'mfm.dart';
import 'user_avatar.dart';

class PlayWidget extends HookConsumerWidget {
  const PlayWidget({
    super.key,
    required this.account,
    required this.host,
    required this.play,
    this.onAccountChanged,
  });

  final Account account;
  final String host;
  final Flash play;
  final void Function(Account account)? onAccountChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final url = Uri.https(host, 'play/${play.id}');
    final started = useState(false);
    final aiscript = useState<AiScript?>(null);
    final components = useState(<String, AsUiComponent>{});
    final locale = Localizations.localeOf(context).toLanguageTag();
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return AnimatedSwitcher(
      duration: Durations.medium1,
      child: started.value
          ? Column(
              children: [
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 0.0,
                  color: colors.panel,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(32.0),
                    child: AsUiWidget(
                      account: account,
                      host: host,
                      componentId: '___root___',
                      components: components.value,
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 0.0,
                  color: colors.panel,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        IconButton(
                          tooltip: t.misskey.reload,
                          onPressed: () async {
                            await aiscript.value?.abort();
                            started.value = false;
                          },
                          icon: const Icon(Icons.refresh),
                        ),
                        Row(
                          children: [
                            LikeButton(
                              isLiked: play.isLiked,
                              likedCount: play.likedCount ?? 0,
                              onTap: !account.isGuest && account.host == host
                                  ? () => futureWithDialog(
                                        context,
                                        play.isLiked
                                            ? ref
                                                .read(
                                                  playNotifierProvider(
                                                    account,
                                                    play.id,
                                                  ).notifier,
                                                )
                                                .unlike()
                                            : ref
                                                .read(
                                                  playNotifierProvider(
                                                    account,
                                                    play.id,
                                                  ).notifier,
                                                )
                                                .like(),
                                      )
                                  : null,
                            ),
                            const Spacer(),
                            if (!account.isGuest)
                              IconButton(
                                tooltip: t.misskey.shareWithNote,
                                onPressed: () {
                                  ref
                                      .read(
                                        postNotifierProvider(account).notifier,
                                      )
                                      .setText(
                                        '${play.title} $url',
                                      );
                                  context.push('/$account/post');
                                },
                                icon: const Icon(Icons.repeat_rounded),
                              ),
                            IconButton(
                              tooltip: t.misskey.copyLink,
                              onPressed: () =>
                                  copyToClipboard(context, url.toString()),
                              icon: const Icon(Icons.link),
                            ),
                            IconButton(
                              tooltip: t.aria.openInBrowser,
                              onPressed: () => launchUrl(ref, url),
                              icon: const Icon(Icons.open_in_browser),
                            ),
                            IconButton(
                              tooltip: t.misskey.share,
                              onPressed: () =>
                                  Share.share('${play.title} $url'),
                              icon: const Icon(Icons.share),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              elevation: 0.0,
              color: colors.panel,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 12.0),
                      child: IconButton(
                        tooltip: t.misskey.switchAccount,
                        onPressed: () async {
                          final accounts = ref.read(accountsNotifierProvider);
                          final destination =
                              await showModalBottomSheet<Account>(
                            context: ref.context,
                            builder: (context) => ListView.separated(
                              itemBuilder: (context, index) {
                                final account = index == 0
                                    ? Account(host: host)
                                    : accounts[index - 1];
                                return AccountPreview(
                                  account: account,
                                  trailing: const Icon(Icons.navigate_next),
                                  avatarSize: 40.0,
                                  onTap: () => context.pop(account),
                                );
                              },
                              separatorBuilder: (_, __) =>
                                  const Divider(height: 0.0),
                              itemCount: accounts.length + 1,
                            ),
                            clipBehavior: Clip.hardEdge,
                          );
                          if (destination != null && destination != account) {
                            onAccountChanged?.call(destination);
                          }
                        },
                        icon: i != null
                            ? UserAvatar(account: account, user: i, size: 32.0)
                            : const Icon(Icons.person, size: 32.0),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 32.0,
                      right: 32.0,
                      bottom: 32.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          play.title,
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 1.4)
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 16.0),
                        Mfm(
                          account: account.host == host
                              ? account
                              : Account(host: host),
                          text: play.summary,
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 1.1),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          autofocus: true,
                          onPressed: () async {
                            await aiscript.value?.abort();
                            final i = await ref
                                .read(iNotifierProvider(account).future);
                            final emojis = await ref.read(
                              emojisNotifierProvider(account.host).future,
                            );
                            components.value = {};
                            try {
                              aiscript.value = await AiScript.newInstance(
                                read: (prompt) async {
                                  final result = await showTextFieldDialog(
                                    context,
                                    title: Text(prompt),
                                  );
                                  return result ?? '';
                                },
                                write: (_) {},
                                api: AsApiLib(
                                  userId: i?.id,
                                  userName: i?.name,
                                  userUsername: i?.username,
                                  customEmojis:
                                      jsonEncode(emojis.values.toList()),
                                  locale: locale,
                                  serverUrl: 'https://${account.host}',
                                  dialog: (title, text, type) => showDialog(
                                    context: context,
                                    builder: (context) => _Dialog(
                                      account: account.host == host
                                          ? account
                                          : Account(host: host),
                                      title: title,
                                      text: text,
                                      type: type,
                                    ),
                                  ),
                                  confirm: (title, text, type) async {
                                    final result = await showDialog<bool>(
                                      context: context,
                                      builder: (context) => _Dialog(
                                        account: account.host == host
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
                                  api: (ep, param, token) async {
                                    final json = jsonDecode(param);
                                    final dio = ref.read(dioProvider);
                                    final misskey = Misskey(
                                      dio: dio,
                                      host: account.host,
                                      token: token,
                                    );
                                    try {
                                      final response = await misskey.apiService
                                          .post<dynamic>(
                                        ep,
                                        json is Map<String, dynamic>
                                            ? json
                                            : {},
                                        excludeRemoveNullPredicate: (_, __) =>
                                            true,
                                      );
                                      return (
                                        jsonEncode(response),
                                        null,
                                      );
                                    } on MisskeyException catch (e) {
                                      if (account.host != host) {
                                        final misskey = Misskey(
                                          dio: dio,
                                          host: host,
                                        );
                                        try {
                                          final response = await misskey
                                              .apiService
                                              .post<dynamic>(
                                            ep,
                                            json is Map<String, dynamic>
                                                ? json
                                                : {},
                                            excludeRemoveNullPredicate:
                                                (_, __) => true,
                                          );
                                          return (
                                            jsonEncode(response),
                                            null,
                                          );
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
                                      .read(
                                        aiscriptStorageNotifierProvider(account)
                                            .notifier,
                                      )
                                      .save('${play.id}:$key', value),
                                  load: (key) =>
                                      ref
                                          .read(
                                            aiscriptStorageNotifierProvider(
                                              account,
                                            ).notifier,
                                          )
                                          .load('${play.id}:$key') ??
                                      '',
                                  url: url.toString(),
                                  nyaize: nyaize,
                                ),
                                ui: AsUiLib(
                                  onUpdate: (id, component) =>
                                      components.value = {
                                    ...components.value,
                                    id: component,
                                  },
                                ),
                                play: AsPlayLib(
                                  thisId: play.id,
                                  thisUrl: url.toString(),
                                ),
                              );
                              started.value = true;
                              await aiscript.value?.exec(input: play.script);
                            } catch (e, st) {
                              await aiscript.value?.abort();
                              if (!context.mounted) return;
                              await showErrorMessageDialog(
                                context,
                                error: e,
                                stackTrace: st,
                              );
                            }
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  colors.buttonGradateA,
                                  colors.buttonGradateB,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 32.0,
                              ),
                              child: Text(
                                'Play',
                                style: TextStyle(
                                  color: colors.fgOnAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (play.likedCount case final likedCount?) ...[
                          const SizedBox(height: 16.0),
                          Tooltip(
                            message: t.misskey.numberOfLikes,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.favorite_border),
                                const SizedBox(width: 8.0),
                                Text(NumberFormat().format(likedCount)),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class _Dialog extends ConsumerWidget {
  const _Dialog({
    required this.account,
    this.title,
    this.text,
    this.type,
    this.showCancelButton = false,
  });

  final Account account;
  final String? title;
  final String? text;
  final String? type;
  final bool showCancelButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return AlertDialog(
      icon: IconTheme(
        data: const IconThemeData(size: 32.0),
        child: switch (type) {
          'success' => Icon(Icons.check, color: colors.success),
          'error' => Icon(Icons.cancel_outlined, color: colors.error),
          'warning' => Icon(Icons.warning_amber_rounded, color: colors.warn),
          'info' => const Icon(Icons.info_outline, color: Color(0xff55c4dd)),
          'question' => const Icon(Icons.help_outline),
          'waiting' => const Center(
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          _ => const Icon(Icons.info_outline, color: Color(0xff55c4dd)),
        },
      ),
      iconPadding: const EdgeInsets.only(
        top: 32.0,
        left: 32.0,
        bottom: 4.0,
        right: 32.0,
      ),
      title: title != null
          ? Mfm(
              account: account,
              text: title,
              textAlign: TextAlign.center,
            )
          : null,
      titlePadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 32.0),
      titleTextStyle: DefaultTextStyle.of(context)
          .style
          .apply(fontSizeFactor: 1.1)
          .copyWith(
            fontWeight: FontWeight.bold,
          ),
      content: Mfm(
        account: account,
        text: text,
        textAlign: TextAlign.center,
      ),
      contentPadding:
          const EdgeInsets.symmetric(vertical: 4.0, horizontal: 32.0),
      actions: showCancelButton
          ? [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100.0, 40.0),
                  padding: const EdgeInsets.all(8.0),
                ),
                onPressed: () => context.pop(true),
                child: Text(t.misskey.ok),
              ),
              OutlinedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100.0, 40.0),
                  padding: const EdgeInsets.all(8.0),
                ),
                onPressed: () => context.pop(false),
                child: Text(t.misskey.cancel),
              ),
            ]
          : [
              ElevatedButton(
                onPressed: () => context.pop(),
                child: Text(t.misskey.gotIt),
              ),
            ],
      actionsPadding: const EdgeInsets.only(
        top: 12.0,
        left: 32.0,
        bottom: 32.0,
        right: 32.0,
      ),
      actionsAlignment: MainAxisAlignment.center,
      scrollable: true,
    );
  }
}
