import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import 'pages_featured.dart';
import 'pages_liked.dart';
import 'pages_my.dart';

class const PagesPage({super.key, required final Account account})
    extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 1 + (account.isGuest ? 0 : 2),
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.pages),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.featured),
              if (!account.isGuest) ...[
                Tab(text: t.misskey.pages_.my),
                Tab(text: t.misskey.pages_.liked),
              ],
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PagesFeatured(account: account),
            if (!account.isGuest) ...[
              PagesMy(account: account),
              PagesLiked(account: account),
            ],
          ],
        ),
      ),
    );
  }
}
