import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../hook/tap_gesture_recognizer_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import 'mfm.dart';

class PollWidget extends HookConsumerWidget {
  const PollWidget({
    super.key,
    required this.account,
    required this.noteId,
    required this.poll,
  });

  final Account account;
  final String noteId;
  final NotePoll poll;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final total = poll.choices.fold(0, (acc, choice) => acc + choice.votes);
    final expiresAt = poll.expiresAt;
    final remaining = expiresAt?.difference(DateTime.now());
    final closed = remaining?.isNegative ?? false;
    final isVoted =
        !poll.multiple && poll.choices.any((choice) => choice.isVoted);
    final showResult = useState(closed || isVoted);
    final recognizer = useTapGestureRecognizer();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...poll.choices.mapIndexed(
          (index, choice) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: SizedBox(
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(4.0),
                  color: showResult.value ? null : colors.accentedBg,
                  gradient: showResult.value
                      ? LinearGradient(
                          colors: [
                            colors.buttonGradateA,
                            colors.buttonGradateB,
                            colors.accentedBg,
                          ],
                          stops: [
                            0,
                            choice.votes / total,
                            choice.votes / total,
                          ],
                        )
                      : null,
                ),
                child: InkWell(
                  onTap: !account.isGuest && !closed && !isVoted
                      ? () async {
                          final confirmed = await confirm(
                            context,
                            message: t.misskey.voteConfirm(choice: choice.text),
                          );
                          if (!context.mounted) return;
                          if (confirmed) {
                            await futureWithDialog(
                              context,
                              ref
                                  .read(notesNotifierProvider(account).notifier)
                                  .vote(noteId, index),
                              overlay: false,
                            );
                            showResult.value = !poll.multiple;
                          }
                        }
                      : null,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: colors.bg.withOpacity(0.9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                ...useMemoized(
                                  () => buildMfm(
                                    ref,
                                    account: account,
                                    text: choice.text,
                                    simple: true,
                                  ),
                                  [colors],
                                ),
                                if (showResult.value)
                                  TextSpan(
                                    text:
                                        ' (${t.misskey.poll_.votesCount(n: NumberFormat().format(choice.votes))})',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withOpacity(0.5),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: t.misskey.poll_.totalVotes(n: total)),
                const TextSpan(text: ' · '),
                if (!closed && !isVoted)
                  TextSpan(
                    text: showResult.value
                        ? t.misskey.poll_.vote
                        : t.misskey.poll_.showResult,
                    recognizer: recognizer
                      ..onTap = () => showResult.value = !showResult.value,
                  )
                else if (isVoted)
                  TextSpan(text: t.misskey.poll_.voted)
                else if (closed)
                  TextSpan(text: t.misskey.poll_.closed),
                if (remaining != null && !remaining.isNegative) ...[
                  const TextSpan(text: ' · '),
                  TextSpan(
                    text: remaining.inDays > 0
                        ? t.misskey.poll_.remainingDays(
                            d: remaining.inDays,
                            h: remaining.inHours % 24,
                          )
                        : remaining.inHours > 0
                            ? t.misskey.poll_.remainingHours(
                                h: remaining.inHours,
                                m: remaining.inMinutes % 60,
                              )
                            : remaining.inMinutes > 0
                                ? t.misskey.poll_.remainingMinutes(
                                    m: remaining.inMinutes,
                                    s: remaining.inSeconds % 60,
                                  )
                                : t.misskey.poll_.remainingSeconds(
                                    s: remaining.inSeconds,
                                  ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
