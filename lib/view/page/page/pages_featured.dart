import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_pages_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/page_preview.dart';

class PagesFeatured extends ConsumerWidget {
  const PagesFeatured({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(featuredPagesProvider(account));

    return RefreshIndicator(
      onRefresh: () => ref.refresh(featuredPagesProvider(account).future),
      child: switch (pages) {
        AsyncValue(valueOrNull: final pages?) => pages.isEmpty
            ? Center(child: Text(t.misskey.nothing))
            : ListView.separated(
                itemBuilder: (context, index) => PagePreview(
                  account: account,
                  page: pages[index],
                  onTap: () =>
                      context.push('/$account/pages/${pages[index].id}'),
                ),
                separatorBuilder: (_, __) => const Divider(height: 0.0),
                itemCount: pages.length,
              ),
        AsyncValue(:final error?, :final stackTrace) =>
          ErrorMessage(error: error, stackTrace: stackTrace),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
