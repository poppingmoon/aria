import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:share_plus/share_plus.dart';

import '../../../extension/user_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../provider/api/play_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../provider/post_notifier_provider.dart';
import '../../../provider/server_url_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/launch_url.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/ad_widget.dart';
import '../../widget/error_message.dart';
import '../../widget/follow_button.dart';
import '../../widget/mfm/code.dart';
import '../../widget/play_widget.dart';
import '../../widget/time_widget.dart';
import '../../widget/user_preview.dart';
import '../../widget/user_sheet.dart';

class PlayPage extends HookConsumerWidget {
  const PlayPage({super.key, required this.account, required this.playId});

  final Account account;
  final String playId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = useState(this.account);
    final i = ref.watch(iNotifierProvider(account.value)).valueOrNull;
    final play = ref.watch(playNotifierProvider(this.account, playId));
    final serverUrl = ref.watch(serverUrlNotifierProvider(this.account.host));
    final url = serverUrl.replace(pathSegments: ['play', playId]);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(play.valueOrNull?.title ?? 'Play'),
        actions: [
          PopupMenuButton<void>(
            itemBuilder:
                (context) => [
                  if (!account.value.isGuest)
                    PopupMenuItem(
                      onTap: () {
                        ref
                            .read(postNotifierProvider(account.value).notifier)
                            .setText('${play.valueOrNull?.title} $url');
                        context.push('/${account.value}/post');
                      },
                      child: Text(t.misskey.shareWithNote),
                    ),
                  PopupMenuItem(
                    onTap: () => copyToClipboard(context, url.toString()),
                    child: Text(t.misskey.copyLink),
                  ),
                  PopupMenuItem(
                    onTap: () => launchUrl(ref, url),
                    child: Text(t.aria.openInBrowser),
                  ),
                  PopupMenuItem(
                    onTap:
                        () => SharePlus.instance.share(
                          ShareParams(text: '${play.valueOrNull?.title} $url'),
                        ),
                    child: Text(t.misskey.share),
                  ),
                  if (!account.value.isGuest &&
                      play.valueOrNull?.user.username == account.value.username)
                    PopupMenuItem(
                      onTap:
                          () => context.push(
                            '/${account.value}/play/$playId/edit',
                          ),
                      child: Text(t.misskey.edit),
                    ),
                  if (play.valueOrNull?.user case final user?
                      when !account.value.isGuest && i?.id != user.id)
                    PopupMenuItem(
                      onTap: () async {
                        final comment = await showTextFieldDialog(
                          context,
                          title: Text(t.misskey.reportAbuseOf(name: user.acct)),
                          initialText: ['Play: $url', '-----', ''].join('\n'),
                          decoration: InputDecoration(
                            helperText: t.misskey.fillAbuseReportDescription,
                          ),
                          maxLines: null,
                        );
                        if (!context.mounted) return;
                        if (comment == null) return;
                        final confirmed = await confirm(
                          context,
                          title: Text(t.misskey.reportAbuseOf(name: user.acct)),
                          message: comment,
                          okText: t.misskey.reportAbuse,
                        );
                        if (!context.mounted) return;
                        if (confirmed) {
                          await futureWithDialog(
                            context,
                            ref
                                .read(misskeyProvider(account.value))
                                .users
                                .reportAbuse(
                                  UsersReportAbuseRequest(
                                    userId: user.id,
                                    comment: comment,
                                  ),
                                ),
                          );
                        }
                      },
                      child: Text(t.misskey.reportAbuse),
                    ),
                ],
          ),
        ],
      ),
      body: switch (play) {
        AsyncValue(valueOrNull: final play?) => Center(
          child: Container(
            width: 700.0,
            height: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView(
              children: [
                PlayWidget(
                  account: account.value,
                  host: this.account.host,
                  play: play,
                  onAccountChanged: (acct) {
                    if (acct.host == this.account.host &&
                        acct.username != this.account.username) {
                      context.push('/$acct/play/$playId');
                    } else {
                      account.value = acct;
                    }
                  },
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 0.0,
                  color: colors.panel,
                  clipBehavior: Clip.hardEdge,
                  child: ExpansionTile(
                    leading: const Icon(Icons.code),
                    title: Text(t.misskey.play_.viewSource),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Code(code: play.script),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 0.0,
                  color: colors.panel,
                  clipBehavior: Clip.hardEdge,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserPreview(
                          account: this.account,
                          user: play.user,
                          avatarSize: 50.0,
                          trailing:
                              this.account == account.value
                                  ? FollowButton(
                                    account: this.account,
                                    userId: play.userId,
                                  )
                                  : null,
                          onTap:
                              () => context.push(
                                this.account == account.value
                                    ? '/${this.account}/users/${play.userId}'
                                    : '/${account.value}/@${play.user.username}@${this.account.host}',
                              ),
                          onLongPress:
                              this.account == account.value
                                  ? () => showUserSheet(
                                    context: context,
                                    account: this.account,
                                    userId: play.userId,
                                  )
                                  : null,
                        ),
                        const Divider(),
                        DefaultTextStyle.merge(
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.75),
                          ),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: '${t.misskey.createdAt}: '),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: TimeWidget(
                                    time: play.createdAt,
                                    detailed: true,
                                    textScaler: TextScaler.noScaling,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (play.updatedAt != play.createdAt)
                          DefaultTextStyle.merge(
                            style: TextStyle(
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurface.withValues(alpha: 0.75),
                            ),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: '${t.misskey.updatedAt}: '),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: TimeWidget(
                                      time: play.updatedAt,
                                      detailed: true,
                                      textScaler: TextScaler.noScaling,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: AdWidget(account: this.account),
                  ),
                ),
              ],
            ),
          ),
        ),
        AsyncValue(:final error?, :final stackTrace) => ErrorMessage(
          error: error,
          stackTrace: stackTrace,
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
      floatingActionButton:
          !account.value.isGuest &&
                  this.account == account.value &&
                  play.valueOrNull?.user.username == account.value.username
              ? FloatingActionButton(
                tooltip: t.misskey.edit,
                onPressed:
                    () => context.push('/${this.account}/play/$playId/edit'),
                child: const Icon(Icons.edit),
              )
              : null,
    );
  }
}
