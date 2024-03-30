import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_clips_notifier_provider.dart';
import '../../widget/clip_preview.dart';
import '../../widget/paginated_list_view.dart';

class UserClips extends ConsumerWidget {
  const UserClips({
    super.key,
    required this.account,
    required this.userId,
  });

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clips = ref.watch(userClipsNotifierProvider(account, userId));

    return PaginatedListView(
      paginationState: clips,
      itemBuilder: (context, clip) => ClipPreview(
        account: account,
        clip: clip,
        onTap: () => context.push('/$account/clips/${clip.id}'),
      ),
      onRefresh: () => ref.refresh(
        userClipsNotifierProvider(account, userId).future,
      ),
      loadMore: (skipError) => ref
          .read(
            userClipsNotifierProvider(account, userId).notifier,
          )
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
