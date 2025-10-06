import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/id.dart';
import '../../../model/tab_settings.dart';
import '../../../model/tab_type.dart';
import '../../../provider/timeline_center_notifier_provider.dart';
import '../../../util/pick_date_time.dart';
import '../../widget/timeline_list_view.dart';

class TagNotes extends HookConsumerWidget {
  const TagNotes({super.key, required this.account, required this.tag});

  final Account account;
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final withReplies = useState(true);
    final withFiles = useState(false);
    final tabSettings = TabSettings(
      tabType: TabType.hashtag,
      account: account,
      hashtag: tag,
      withReplies: withReplies.value,
      withFiles: withFiles.value,
    );
    final controller = useScrollController();
    final hasScrolled = useState(false);
    useEffect(() {
      void callback() {
        hasScrolled.value =
            hasScrolled.value || controller.position.extentBefore > 0.0;
      }

      controller.addListener(callback);
      return () => controller.removeListener(callback);
    }, []);
    final theme = Theme.of(context);

    return NestedScrollView(
      controller: controller,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        const SliverToBoxAdapter(child: SizedBox(height: 8.0)),
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ExpansionTile(
                leading: const Icon(Icons.tune),
                title: Text(t.misskey.options),
                backgroundColor: theme.colorScheme.surface,
                collapsedBackgroundColor: theme.colorScheme.surface,
                shape: RoundedRectangleBorder(
                  side: hasScrolled.value && innerBoxIsScrolled
                      ? BorderSide(color: theme.colorScheme.outlineVariant)
                      : BorderSide.none,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  side: hasScrolled.value && innerBoxIsScrolled
                      ? BorderSide(color: theme.colorScheme.outlineVariant)
                      : BorderSide.none,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                children: [
                  const Divider(height: 1.0),
                  SwitchListTile(
                    title: Text(t.misskey.showRepliesToOthersInTimeline),
                    value: withReplies.value,
                    onChanged: (value) => withReplies.value = value,
                  ),
                  SwitchListTile(
                    title: Text(t.misskey.fileAttachedOnly),
                    value: withFiles.value,
                    onChanged: (value) => withFiles.value = value,
                  ),
                  ListTile(
                    title: Text(t.aria.timeMachine),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      final centerId = ref.read(
                        timelineCenterNotifierProvider(tabSettings),
                      );
                      final date = await pickDateTime(
                        context,
                        initialDate: centerId != null
                            ? Id.parse(centerId).date
                            : null,
                        lastDate: DateTime.now(),
                      );
                      if (date != null) {
                        await ref
                            .read(
                              timelineCenterNotifierProvider(
                                tabSettings,
                              ).notifier,
                            )
                            .setCenterFromDate(date);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
      body: TimelineListView(tabSettings: tabSettings, nested: true),
      floatHeaderSlivers: true,
    );
  }
}
