import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../widget/chat_list_view.dart';
import '../../widget/chat_post_form.dart';

class ChatRoomChat extends ConsumerWidget {
  const ChatRoomChat({
    super.key,
    required this.account,
    this.userId,
    this.roomId,
  });

  final Account account;
  final String? userId;
  final String? roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final user = userId != null
        ? ref.watch(userNotifierProvider(account, userId: userId)).valueOrNull
        : null;

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ChatListView(
              account: account,
              userId: userId,
              roomId: roomId,
            ),
          ),
          const Divider(height: 0.0),
          switch (user) {
            UserDetailed(host: _?) || UserDetailed(canChat: false) => Container(
              margin: const EdgeInsets.all(24.0),
              width: maxContentWidth,
              child: Text(
                t.misskey.chat_.chatNotAvailableInOtherAccount,
                textAlign: TextAlign.center,
              ),
            ),
            UserDetailedNotMeWithRelations(
              chatScope: ChatScope.followers,
              isFollowing: false,
            ) =>
              Container(
                margin: const EdgeInsets.all(24.0),
                width: maxContentWidth,
                child: Text(
                  t.misskey.chat_.thisUserAllowsChatOnlyFromFollowers,
                  textAlign: TextAlign.center,
                ),
              ),
            UserDetailedNotMeWithRelations(
              chatScope: ChatScope.following,
              isFollowed: false,
            ) =>
              Container(
                margin: const EdgeInsets.all(24.0),
                width: maxContentWidth,
                child: Text(
                  t.misskey.chat_.thisUserAllowsChatOnlyFromFollowing,
                  textAlign: TextAlign.center,
                ),
              ),
            UserDetailedNotMeWithRelations(
              chatScope: ChatScope.mutual,
              isFollowing: false,
              isFollowed: false,
            ) =>
              Container(
                margin: const EdgeInsets.all(24.0),
                width: maxContentWidth,
                child: Text(
                  t.misskey.chat_.thisUserAllowsChatOnlyFromMutualFollowing,
                  textAlign: TextAlign.center,
                ),
              ),
            UserDetailed(chatScope: ChatScope.none) => Container(
              margin: const EdgeInsets.all(24.0),
              width: maxContentWidth,
              child: Text(
                t.misskey.chat_.thisUserNotAllowedChatAnyone,
                textAlign: TextAlign.center,
              ),
            ),
            _ when !(i?.canChat ?? true) => Container(
              margin: const EdgeInsets.all(24.0),
              width: maxContentWidth,
              child: Text(
                i?.policies?.chatAvailability == ChatAvailability.readOnly
                    ? t.misskey.chat_.chatIsReadOnlyForThisAccountOrServer
                    : t.misskey.chat_.chatNotAvailableForThisAccountOrServer,
                textAlign: TextAlign.center,
              ),
            ),
            _ => ChatPostForm(account: account, userId: userId, roomId: roomId),
          },
        ],
      ),
    );
  }
}
