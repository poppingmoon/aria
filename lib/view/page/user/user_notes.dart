import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/id.dart';
import '../../../model/tab_settings.dart';
import '../../../model/tab_type.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../../provider/timeline_center_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/pick_date_time.dart';
import '../../widget/timeline_list_view.dart';

enum _NoteType {
  notes,
  all,
  files,
}

class UserNotes extends HookConsumerWidget {
  const UserNotes({
    super.key,
    required this.account,
    required this.userId,
  });

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = useState(_NoteType.all);
    final tabSettings = TabSettings(
      tabType: TabType.user,
      account: account,
      withReplies: type.value == _NoteType.all,
      withFiles: type.value == _NoteType.files,
      withRenotes: type.value == _NoteType.all,
      userId: userId,
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SegmentedButton(
                  segments: [
                    ButtonSegment(
                      value: _NoteType.notes,
                      label: Text(t.misskey.notes),
                    ),
                    ButtonSegment(
                      value: _NoteType.all,
                      label: Text(t.misskey.all),
                    ),
                    ButtonSegment(
                      value: _NoteType.files,
                      label: Text(t.misskey.withFiles),
                    ),
                  ],
                  selected: {type.value},
                  onSelectionChanged: (selection) =>
                      type.value = selection.single,
                  showSelectedIcon: false,
                ),
              ),
              IconButton(
                tooltip: t.aria.timeMachine,
                icon: const Icon(Icons.history),
                onPressed: () async {
                  final user = await futureWithDialog(
                    context,
                    ref.read(
                      userNotifierProvider(account, userId: userId).future,
                    ),
                  );
                  if (!context.mounted) return;
                  final centerId =
                      ref.read(timelineCenterNotifierProvider(tabSettings));
                  final date = await pickDateTime(
                    context,
                    initialDate:
                        centerId != null ? Id.parse(centerId).date : null,
                    firstDate: user?.createdAt,
                    lastDate: DateTime.now(),
                  );
                  if (date != null) {
                    await ref
                        .read(
                          timelineCenterNotifierProvider(tabSettings).notifier,
                        )
                        .setCenterFromDate(date);
                  }
                },
              ),
            ],
          ),
        ),
        Expanded(child: TimelineListView(tabSettings: tabSettings)),
      ],
    );
  }
}
