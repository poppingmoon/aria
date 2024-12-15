import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../../constant/colors.dart';
import '../../../extension/user_detailed_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../../provider/api/skeb_status_provider.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/launch_url.dart';
import '../../../util/navigate.dart';
import '../../../util/open_as_guest.dart';
import '../../../util/punycode.dart';
import '../../dialog/image_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/emoji_sheet.dart';
import '../../widget/error_message.dart';
import '../../widget/image_widget.dart';
import '../../widget/mfm.dart';
import '../../widget/note_widget.dart';
import '../../widget/role_chip.dart';
import '../../widget/shake_widget.dart';
import '../../widget/skeb_status_widget.dart';
import '../../widget/time_widget.dart';
import '../../widget/url_sheet.dart';
import '../../widget/url_widget.dart';
import '../../widget/user_avatar.dart';
import '../../widget/user_banner.dart';
import '../../widget/username_widget.dart';

class UserHome extends ConsumerWidget {
  const UserHome({
    super.key,
    required this.account,
    this.userId,
    this.username,
    this.host,
  });

  final Account account;
  final String? userId;
  final String? username;
  final String? host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(
      userNotifierProvider(
        account,
        userId: userId,
        username: username,
        host: host,
      ),
    );

    return RefreshIndicator(
      onRefresh: () => ref.refresh(
        userNotifierProvider(
          account,
          userId: userId,
          username: username,
          host: host,
        ).future,
      ),
      child: switch (user) {
        AsyncValue(valueOrNull: final user?) =>
          _UserHome(account: account, user: user),
        AsyncValue(:final error?, :final stackTrace) => ErrorMessage(
            error: error,
            stackTrace: stackTrace,
          ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

class _UserHome extends ConsumerWidget {
  const _UserHome({
    required this.account,
    required this.user,
  });

  final Account account;
  final UserDetailed user;

  int _calcAge(DateTime birthday) {
    final now = DateTime.now();
    final yearDiff = now.year - birthday.year;
    final monthDiff = now.month - birthday.month;
    if (monthDiff < 0 || (monthDiff == 0 && now.day < birthday.day)) {
      return yearDiff - 1;
    } else {
      return yearDiff;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
    final skebStatus = meta?.enableSkebStatus ?? false
        ? ref.watch(skebStatusProvider(account, user.id)).valueOrNull
        : null;
    final squareAvatars = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.squareAvatars),
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style = DefaultTextStyle.of(context).style;
    final remoteUrl = user.uri ?? user.url;
    final birthday = user.birthday != null
        ? DateFormat.yMMMd(
            Localizations.localeOf(context).toLanguageTag(),
          ).format(user.birthday!)
        : null;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  UserBanner(
                    account: account,
                    user: user,
                    expandOnTap: true,
                  ),
                  Container(
                    width: 800.0,
                    height: 50.0,
                    margin: const EdgeInsets.only(
                      top: 8.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      color: colors.panel,
                    ),
                  ),
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(squareAvatars ? 20.0 : 100.0),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Colors.black54,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: UserAvatar(
                  account: account,
                  user: user,
                  size: 100.0,
                  onTap: () => showDialog<void>(
                    context: context,
                    builder: (context) =>
                        ImageDialog(url: user.avatarUrl.toString()),
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              width: 800.0,
              margin: const EdgeInsets.only(bottom: 4.0, left: 8.0, right: 8.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                color: colors.panel,
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DefaultTextStyle.merge(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    child: UsernameWidget(account: account, user: user),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: '@${user.username}'),
                        TextSpan(
                          text: '@${toUnicode(user.host ?? account.host)}',
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.5),
                          ),
                        ),
                        if (user.isLocked)
                          const WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.0),
                              child: Icon(Icons.lock),
                            ),
                          ),
                        if (user.isBot)
                          const WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.0),
                              child: Icon(Icons.smart_toy_outlined),
                            ),
                          ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (remoteUrl != null)
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                width: 800.0,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  color: colors.infoWarnBg,
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    Icons.warning,
                                    color: colors.infoWarnFg,
                                  ),
                                ),
                                TextSpan(
                                  text: t.misskey.remoteUserCaution,
                                  style: TextStyle(
                                    color: colors.infoWarnFg,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Wrap(
                          children: [
                            TextButton(
                              onPressed: () => launchUrl(ref, remoteUrl),
                              child: Text(t.misskey.showOnRemote),
                            ),
                            TextButton(
                              onPressed: () => futureWithDialog(
                                context,
                                openUserAsGuest(ref, user),
                              ),
                              child: Text(t.aria.openAsGuest),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              width: 800.0,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    height: 8.0,
                    margin: const EdgeInsets.only(top: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      color: colors.panel,
                    ),
                  ),
                  if (user
                      case UserDetailedNotMeWithRelations(
                            :final followedMessage?
                          ) ||
                          MeDetailed(:final followedMessage?))
                    Container(
                      width: double.infinity,
                      color: colors.panel,
                      child: Card(
                        margin: const EdgeInsets.all(8.0),
                        color: Color.lerp(colors.accent, colors.panel, 0.85),
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          onLongPress: () =>
                              copyToClipboard(context, followedMessage),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  t.misskey.messageToFollower,
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                Mfm(
                                  account: account,
                                  text: followedMessage,
                                  simple: true,
                                  emojis: user.emojis,
                                  author: user,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  Material(
                    color: colors.panel,
                    child: SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 4.0,
                        runSpacing: 4.0,
                        children: [
                          ...?user.roles?.map(
                            (role) => RoleChip(
                              account: account,
                              role: role,
                              onTap: () =>
                                  context.push('/$account/roles/${role.id}'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (user case UserDetailed(:final memo?))
                    Container(
                      width: double.infinity,
                      color: colors.panel,
                      child: Card(
                        margin: const EdgeInsets.all(8.0),
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          onTap: () async {
                            final memo = await showTextFieldDialog(
                              context,
                              title: Text(t.misskey.editMemo),
                              initialText: user.memo,
                              maxLines: null,
                            );
                            if (!context.mounted) return;
                            if (memo != null) {
                              await ref
                                  .read(
                                    userNotifierProvider(
                                      account,
                                      userId: user.id,
                                    ).notifier,
                                  )
                                  .updateMemo(memo);
                            }
                          },
                          onLongPress: () => copyToClipboard(context, memo),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  t.misskey.memo,
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                Text(memo),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  Material(
                    color: colors.panel,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(8.0),
                      child: user.description != null
                          ? Mfm(
                              account: account,
                              text: user.description,
                              emojis: user.emojis,
                              author: user,
                              isUserDescription: true,
                              selectable: true,
                              onTapEmoji: (emoji) => showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => EmojiSheet(
                                  account: account,
                                  emoji: emoji,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            )
                          : Text(
                              t.misskey.noAccountDescription,
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface
                                    .withOpacity(0.8),
                              ),
                              textAlign: TextAlign.center,
                            ),
                    ),
                  ),
                  if (user.mutualLinkSections case final mutualLinkSections?
                      when mutualLinkSections.isNotEmpty) ...[
                    ColoredBox(
                      color: colors.panel,
                      child: const Divider(),
                    ),
                    for (final section in mutualLinkSections) ...[
                      if (section.name case final name?)
                        Container(
                          width: double.infinity,
                          color: colors.panel,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(name),
                          ),
                        ),
                      Material(
                        color: colors.panel,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: section.mutualLinks
                                .map(
                                  (link) => InkWell(
                                    onTap: () =>
                                        launchUrl(ref, Uri.parse(link.url)),
                                    onLongPress: () =>
                                        showModalBottomSheet<void>(
                                      context: context,
                                      builder: (context) =>
                                          UrlSheet(url: link.url),
                                    ),
                                    child: link.imgSrc != null
                                        ? ImageWidget(
                                            url: link.imgSrc!,
                                            width: 200.0,
                                            height: 40.0,
                                            semanticLabel: link.description,
                                          )
                                        : const SizedBox(
                                            width: 200.0,
                                            height: 40.0,
                                          ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ],
                  ColoredBox(
                    color: colors.panel,
                    child: const Divider(),
                  ),
                  Material(
                    color: colors.panel,
                    child: IconTheme.merge(
                      data: IconThemeData(size: style.fontSize),
                      child: Table(
                        columnWidths: const {
                          0: FlexColumnWidth(3.0),
                          1: FlexColumnWidth(7.0),
                        },
                        children: [
                          if (user case UserDetailed(:final location?))
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Center(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(right: 2.0),
                                          child: Icon(Icons.place),
                                        ),
                                        Text(
                                          t.misskey.location,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(location),
                                ),
                              ],
                            ),
                          if (user case UserDetailed(birthday: final date?))
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        const WidgetSpan(
                                          child: Icon(Icons.cake),
                                        ),
                                        const WidgetSpan(
                                          child: SizedBox(width: 2.0),
                                        ),
                                        TextSpan(
                                          text: t.misskey.birthday,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    '$birthday (${t.misskey.yearsOld(age: _calcAge(date))})',
                                  ),
                                ),
                              ],
                            ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: Icon(Icons.calendar_today),
                                      ),
                                      const WidgetSpan(
                                        child: SizedBox(width: 2.0),
                                      ),
                                      TextSpan(
                                        text: t.misskey.registeredDate,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: TimeWidget(
                                  time: user.createdAt,
                                  detailed: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (user.fields?.isNotEmpty ?? skebStatus != null) ...[
                    ColoredBox(
                      color: colors.panel,
                      child: const Divider(),
                    ),
                    Material(
                      color: colors.panel,
                      child: Table(
                        columnWidths: const {
                          0: FlexColumnWidth(3.0),
                          1: FlexColumnWidth(7.0),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: [
                          ...?user.fields?.map(
                            (field) => TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Center(
                                    child: DefaultTextStyle.merge(
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      child: Mfm(
                                        account: account,
                                        text: field.name,
                                        simple: true,
                                        emojis: user.emojis,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: user.verifiedLinks
                                          .contains(field.value)
                                      ? UrlWidget(
                                          url: field.value,
                                          verified: true,
                                          onTap: () => navigate(
                                            ref,
                                            account,
                                            field.value,
                                          ),
                                          style: TextStyle(color: colors.link),
                                        )
                                      : Mfm(
                                          account: account,
                                          text: field.value,
                                          emojis: user.emojis,
                                          author: user,
                                        ),
                                ),
                              ],
                            ),
                          ),
                          if (skebStatus != null)
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Align(
                                    child: InkWell(
                                      onTap: () =>
                                          launchUrl(ref, Uri.https('skeb.jp')),
                                      child: DefaultTextStyle.merge(
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                        child: Mfm(
                                          account: account,
                                          text: ':skeb: Skeb',
                                          simple: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: SkebStatusWidget(
                                      account: account,
                                      skebStatus: skebStatus,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                  ColoredBox(
                    color: colors.panel,
                    child: const Divider(),
                  ),
                  Material(
                    color: colors.panel,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                NumberFormat().format(user.notesCount),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                t.misskey.notes,
                                style: TextStyle(
                                  fontSize: style.fontSize! * 0.85,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: user.isFollowingVisibleForMe
                                ? () => context.push(
                                      '/$account/users/${user.id}/following',
                                    )
                                : null,
                            child: Column(
                              children: [
                                if (user.isFollowingVisibleForMe)
                                  Text(
                                    NumberFormat().format(user.followingCount),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                else
                                  const ShakeWidget(child: Icon(Icons.lock)),
                                Text(
                                  t.misskey.following,
                                  style: TextStyle(
                                    fontSize: style.fontSize! * 0.85,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: user.isFollowersVisibleForMe
                                ? () => context.push(
                                      '/$account/users/${user.id}/followers',
                                    )
                                : null,
                            child: Column(
                              children: [
                                if (user.isFollowersVisibleForMe)
                                  Text(
                                    NumberFormat().format(user.followersCount),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                else
                                  const ShakeWidget(child: Icon(Icons.lock)),
                                Text(
                                  t.misskey.followers,
                                  style: TextStyle(
                                    fontSize: style.fontSize! * 0.85,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 8.0,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      color: colors.panel,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (user case UserDetailed(:final pinnedNoteIds?))
          SliverList.builder(
            itemBuilder: (context, index) => Center(
              child: Container(
                width: 800.0,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  color: colors.panel,
                  elevation: 0.0,
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.push_pin,
                              size: style.fontSize,
                              color: pinColor,
                            ),
                            const SizedBox(width: 2.0),
                            Expanded(
                              child: Text(
                                t.misskey.pinnedNote,
                                style: const TextStyle(color: pinColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      NoteWidget(
                        account: account,
                        noteId: pinnedNoteIds[index],
                        withHardMute: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            itemCount: pinnedNoteIds.length,
          ),
      ],
    );
  }
}
