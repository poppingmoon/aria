import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/hashtags_trend_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/haptic_feedback_refresh_indicator.dart';
import '../../widget/line_chart.dart';

class ExploreHashtags extends ConsumerWidget {
  const ExploreHashtags({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trend = ref.watch(hashtagsTrendProvider(account));
    final theme = Theme.of(context);

    return HapticFeedbackRefreshIndicator(
      onRefresh: () => ref.refresh(hashtagsTrendProvider(account).future),
      child: switch (trend) {
        AsyncValue(value: final trend?) =>
          trend.isEmpty
              ? LayoutBuilder(
                  builder: (context, constraint) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: constraint.maxHeight,
                      child: Center(child: Text(t.misskey.nothing)),
                    ),
                  ),
                )
              : ListTileTheme(
                  data: ListTileThemeData(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    tileColor: theme.colorScheme.surface,
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, index) => Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 8.0,
                          top: index == 0 ? 8.0 : 4.0,
                          right: 8.0,
                          bottom: index == trend.length - 1 ? 8.0 : 4.0,
                        ),
                        width: maxContentWidth,
                        child: ListTile(
                          leading: const Icon(Icons.tag),
                          title: Text(trend[index].tag),
                          subtitle: Text(
                            t.misskey.nUsersMentioned(
                              n: trend[index].usersCount,
                            ),
                          ),
                          trailing: SizedBox.square(
                            dimension: 32.0,
                            child: LineChart(chart: trend[index].chart),
                          ),
                          onTap: () => context.push(
                            '/$account/tags/${trend[index].tag}',
                          ),
                        ),
                      ),
                    ),
                    itemCount: trend.length,
                  ),
                ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
