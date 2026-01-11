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
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/play_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../rust/api/aiscript.dart';
import '../../rust/api/aiscript/ui.dart';
import '../../rust/frb_generated.dart';
import '../../util/copy_text.dart';
import '../../util/create_aiscript.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/error_message_dialog.dart';
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
    useAutomaticKeepAlive();
    final i = ref.watch(iNotifierProvider(account)).value;
    final serverUrl = ref.watch(serverUrlNotifierProvider(host));
    final url = serverUrl.replace(pathSegments: ['play', play.id]);
    final started = useState(false);
    final aiscript = useState<AiScript?>(null);
    final components = useState(<String, AsUiComponent>{});
    final style = DefaultTextStyle.of(context).style;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return AnimatedSwitcher(
      duration: Durations.medium1,
      child: started.value
          ? PopScope(
              canPop: false,
              onPopInvokedWithResult: (didPop, _) async {
                if (!didPop) {
                  final shouldPop = await confirm(
                    context,
                    message: t.aria.exitPlayConfirm,
                  );
                  if (!context.mounted) return;
                  if (shouldPop) {
                    aiscript.value?.abort().ignore();
                    context.pop();
                  }
                }
              },
              child: Column(
                spacing: 8.0,
                children: [
                  Card.filled(
                    margin: EdgeInsets.zero,
                    color: colors.panel,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(32.0),
                      child: AsUiWidget(
                        account: account,
                        host: host,
                        components: components.value,
                      ),
                    ),
                  ),
                  Card.filled(
                    margin: EdgeInsets.zero,
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
                                          postNotifierProvider(
                                            account,
                                          ).notifier,
                                        )
                                        .setText('${play.title} $url');
                                    context.push('/$account/post');
                                  },
                                  icon: const Icon(Icons.repeat_rounded),
                                ),
                              IconButton(
                                tooltip: t.aria.openInBrowser,
                                onPressed: () => launchUrl(ref, url),
                                icon: const Icon(Icons.open_in_browser),
                              ),
                              IconButton(
                                tooltip: t.misskey.copyLink,
                                onPressed: () =>
                                    copyToClipboard(context, url.toString()),
                                icon: const Icon(Icons.link),
                              ),
                              IconButton(
                                tooltip: t.misskey.share,
                                onPressed: () => SharePlus.instance.share(
                                  ShareParams(text: '${play.title} $url'),
                                ),
                                icon: const Icon(Icons.share),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Card.filled(
              margin: EdgeInsets.zero,
              color: colors.panel,
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 12.0,
                        end: 12.0,
                      ),
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
                                  separatorBuilder: (_, _) =>
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
                          style: style
                              .apply(fontSizeFactor: 1.4)
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16.0),
                        Mfm(
                          account: account.host == host
                              ? account
                              : Account(host: host),
                          text: play.summary,
                          style: style.apply(fontSizeFactor: 1.1),
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
                            if (!RustLib.instance.initialized) {
                              await RustLib.init();
                            }
                            await aiscript.value?.abort();
                            try {
                              aiscript.value = await createAiScript(
                                ref,
                                account: account,
                                host: host,
                                storageKey: play.id,
                                url: url,
                                components: components,
                                playId: play.id,
                              );
                              started.value = true;
                              await aiscript.value?.exec(
                                input: play.script,
                                isLegacy: switch (play.updatedAt) {
                                  final updatedAt
                                      when updatedAt.isBefore(
                                        // 2025.8.0-alpha.5
                                        DateTime.utc(2025, 8, 8),
                                      ) =>
                                    true,
                                  final updatedAt
                                      when updatedAt.isBefore(
                                        // 2025.4.1-io.2
                                        DateTime.utc(2025, 11, 23),
                                      ) =>
                                    null,
                                  _ => false,
                                },
                              );
                            } catch (e, st) {
                              try {
                                await aiscript.value?.abort();
                              } catch (_) {}
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
