import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/pages_notifier_provider.dart';
import '../../widget/page_preview.dart';
import '../../widget/paginated_list_view.dart';

class const PagesMy({super.key, required final Account account})
    extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(pagesNotifierProvider(account));

    return PaginatedListView(
      paginationState: pages,
      itemBuilder: (context, page) => PagePreview(
        account: account,
        page: page,
        onTap: () => context.push('/$account/pages/${page.id}'),
      ),
      onRefresh: () => ref.refresh(pagesNotifierProvider(account).future),
      loadMore: (skipError) => ref
          .read(pagesNotifierProvider(account).notifier)
          .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.nothing,
    );
  }
}
