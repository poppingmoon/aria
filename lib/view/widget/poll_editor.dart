import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/post_notifier_provider.dart';
import '../../util/pick_date_time.dart';
import '../dialog/duration_picker_dialog.dart';
import '../dialog/text_field_dialog.dart';
import 'time_widget.dart';

class PollEditor extends ConsumerWidget {
  const PollEditor({
    super.key,
    required this.account,
    this.noteId,
  });

  final Account account;
  final String? noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final poll = ref.watch(
      postNotifierProvider(account, noteId: noteId)
          .select((request) => request.poll),
    );
    if (poll == null) {
      return const SizedBox.shrink();
    }
    final expiresAt = poll.expiresAt;
    final expiredAfter = poll.expiredAfter;

    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (poll.choices.length < 2)
            Text(
              t.misskey.poll_.noOnlyOneChoice,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ...poll.choices.mapIndexed(
            (index, choice) => ListTile(
              onTap: () async {
                final result = await showDialog<String>(
                  context: context,
                  builder: (context) => TextFieldDialog(initialText: choice),
                );
                if (result != null) {
                  ref
                      .read(
                        postNotifierProvider(account, noteId: noteId).notifier,
                      )
                      .setChoice(index, result);
                }
              },
              leading: Text(
                t.misskey.poll_.choiceN(n: index + 1),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              title: Text(
                choice.isNotEmpty
                    ? choice
                    : t.misskey.poll_.choiceN(n: index + 1),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withValues(
                        alpha: choice.isNotEmpty ? 1.0 : 0.5,
                      ),
                ),
              ),
              trailing: IconButton(
                onPressed: () => ref
                    .read(
                      postNotifierProvider(account, noteId: noteId).notifier,
                    )
                    .removeChoice(index),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: poll.choices.length <= 10
                ? () => ref
                    .read(
                      postNotifierProvider(account, noteId: noteId).notifier,
                    )
                    .addChoice('')
                : null,
            child: Text(t.misskey.add),
          ),
          const Divider(),
          SwitchListTile(
            title: Text(t.misskey.poll_.canMultipleVote),
            value: poll.multiple ?? false,
            onChanged: (value) => ref
                .read(postNotifierProvider(account, noteId: noteId).notifier)
                .setMultiple(value),
          ),
          ListTile(
            title: Text(t.misskey.poll_.expiration),
            subtitle: Text(
              poll.expiresAt != null
                  ? t.misskey.poll_.at
                  : poll.expiredAfter != null
                      ? t.misskey.poll_.after
                      : t.misskey.poll_.infinite,
            ),
            onTap: () => showModalBottomSheet<void>(
              context: context,
              builder: (context) => ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text(t.misskey.poll_.infinite),
                    onTap: () {
                      ref
                          .read(
                            postNotifierProvider(account, noteId: noteId)
                                .notifier,
                          )
                          .clearExpiration();
                      context.pop();
                    },
                  ),
                  ListTile(
                    title: Text(t.misskey.poll_.at),
                    onTap: () {
                      ref
                          .read(
                            postNotifierProvider(account, noteId: noteId)
                                .notifier,
                          )
                          .setExpiresAt(
                            DateTime.now()
                                .add(const Duration(days: 1))
                                .copyWith(
                                  hour: 0,
                                  minute: 0,
                                  second: 0,
                                  millisecond: 0,
                                ),
                          );
                      context.pop();
                    },
                  ),
                  ListTile(
                    title: Text(t.misskey.poll_.after),
                    onTap: () {
                      ref
                          .read(
                            postNotifierProvider(account, noteId: noteId)
                                .notifier,
                          )
                          .setExpiredAfter(const Duration(hours: 1));
                      context.pop();
                    },
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
            ),
          ),
          if (expiresAt != null)
            ListTile(
              title: Text(t.misskey.poll_.deadlineDate),
              subtitle: TimeWidget(time: expiresAt, detailed: true),
              onTap: () async {
                final expiresAt = await pickDateTime(
                  context,
                  initialDate: poll.expiresAt,
                  firstDate: DateTime.now(),
                );
                if (expiresAt != null) {
                  ref
                      .read(
                        postNotifierProvider(account, noteId: noteId).notifier,
                      )
                      .setExpiresAt(expiresAt);
                }
              },
            ),
          if (expiredAfter != null)
            ListTile(
              title: Text(t.misskey.poll_.duration),
              subtitle: Text(
                [
                  if (expiredAfter.inDays > 0)
                    '${expiredAfter.inDays}${t.misskey.time_.day}',
                  if (expiredAfter.inHours > 0 && expiredAfter.inHours % 24 > 0)
                    '${expiredAfter.inHours % 24}${t.misskey.time_.hour}',
                  if (expiredAfter.inMinutes > 0 &&
                      expiredAfter.inMinutes % 60 > 0)
                    '${expiredAfter.inMinutes % 60}${t.misskey.time_.minute}',
                  if (expiredAfter.inSeconds % 60 > 0)
                    '${expiredAfter.inSeconds % 60}${t.misskey.time_.second}',
                ].join(' '),
              ),
              onTap: () async {
                final result = await showDurationPickerDialog(
                  context,
                  initialDuration: expiredAfter,
                );
                if (result != null) {
                  ref
                      .read(
                        postNotifierProvider(account, noteId: noteId).notifier,
                      )
                      .setExpiredAfter(result);
                }
              },
            ),
        ],
      ),
    );
  }
}
