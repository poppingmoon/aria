import 'package:flutter/material.dart' hide Page;
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import 'mfm.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class PagePreview extends StatelessWidget {
  const PagePreview({
    super.key,
    required this.account,
    required this.page,
    this.onTap,
  });

  final Account account;
  final Page page;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(page.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (page case Page(:final summary?))
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Mfm(
                account: account,
                text: summary,
                simple: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Row(
              children: [
                UserAvatar(user: page.user),
                const SizedBox(width: 2.0),
                Expanded(
                  child: UsernameWidget(account: account, user: page.user),
                ),
              ],
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
