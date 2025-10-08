import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_pages_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/haptic_feedback_refresh_indicator.dart';
import '../../widget/page_preview.dart';

class PagesFeatured extends ConsumerWidget {
  const PagesFeatured({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(featuredPagesProvider(account));

    return HapticFeedbackRefreshIndicator(
      onRefresh: () => ref.refresh(featuredPagesProvider(account).future),
      child: switch (pages) {
        AsyncValue(value: final pages?) =>
          pages.isEmpty
              ? LayoutBuilder(
                  builder: (context, constraint) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: constraint.maxHeight,
                      child: Center(child: Text(t.misskey.nothing)),
                    ),
                  ),
                )
              : ListView.builder(
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      width: maxContentWidth,
                      margin: EdgeInsets.only(
                        left: 8.0,
                        top: index == 0 ? 8.0 : 4.0,
                        right: 8.0,
                        bottom: index == pages.length - 1 ? 120.0 : 4.0,
                      ),
                      child: PagePreview(
                        account: account,
                        page: pages[index],
                        onTap: () =>
                            context.push('/$account/pages/${pages[index].id}'),
                      ),
                    ),
                  ),
                  itemCount: pages.length,
                ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              width: maxContentWidth,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
