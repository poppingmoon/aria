import 'package:flutter/material.dart' hide Page;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../model/account.dart';
import 'image_widget.dart';
import 'mfm.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class PagePreview extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    return Card.filled(
      color: Theme.of(context).colorScheme.surface,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            if (page case Page(:final eyeCatchingImage?))
              ImageWidget(
                url: eyeCatchingImage.url,
                blurHash: eyeCatchingImage.blurhash,
                width: double.infinity,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ListTile(
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
                        UserAvatar(account: account, user: page.user),
                        const SizedBox(width: 2.0),
                        Expanded(
                          child: UsernameWidget(
                            account: account,
                            user: page.user,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
