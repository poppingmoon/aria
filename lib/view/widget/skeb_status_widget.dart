import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../util/launch_url.dart';
import 'mfm.dart';

class SkebStatusWidget extends ConsumerWidget {
  const SkebStatusWidget({
    super.key,
    required this.account,
    required this.skebStatus,
  });

  final Account account;
  final UsersGetSkebStatusResponse skebStatus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = DefaultTextStyle.of(context).style;

    return Tooltip(
      message: skebStatus.skills.nonNulls
          .map(
            (skill) => [
              switch (skill.genre) {
                SkebStatusSkillGenre.art => t.misskeyIO.skebStatus_.genres_.art,
                SkebStatusSkillGenre.comic =>
                  t.misskeyIO.skebStatus_.genres_.comic,
                SkebStatusSkillGenre.voice =>
                  t.misskeyIO.skebStatus_.genres_.voice,
                SkebStatusSkillGenre.novel =>
                  t.misskeyIO.skebStatus_.genres_.novel,
                SkebStatusSkillGenre.video =>
                  t.misskeyIO.skebStatus_.genres_.video,
                SkebStatusSkillGenre.music =>
                  t.misskeyIO.skebStatus_.genres_.music,
                SkebStatusSkillGenre.correction =>
                  t.misskeyIO.skebStatus_.genres_.correction,
                null => t.misskey.unknown,
              },
              t.misskeyIO.skebStatus_.yenX(
                x: NumberFormat().format(skill.amount),
              ),
            ].join(' '),
          )
          .join(' | '),
      child: InkWell(
        onTap: () => launchUrl(
          ref,
          Uri.https('skeb.jp', '@${skebStatus.screenName}'),
        ),
        child: Mfm(
          account: account,
          leadingSpans: [
            WidgetSpan(
              alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.alphabetic,
              child: Container(
                decoration: BoxDecoration(
                  color: skebStatus.isAcceptable
                      ? const Color(0xFFF14668)
                      : const Color(0xFF363636),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                child: Text(
                  skebStatus.isAcceptable
                      ? t.misskeyIO.skebStatus_.seeking
                      : skebStatus.isCreator
                          ? t.misskeyIO.skebStatus_.stopped
                          : t.misskeyIO.skebStatus_.client,
                  style: style.apply(
                    color: Colors.white,
                    fontSizeFactor: 0.85,
                  ),
                ),
              ),
            ),
            const WidgetSpan(child: SizedBox(width: 2.0)),
          ],
          text: [
            if (skebStatus.isAcceptable)
              if (skebStatus.skills.firstOrNull case final skill?) ...[
                switch (skill.genre) {
                  SkebStatusSkillGenre.art =>
                    t.misskeyIO.skebStatus_.genres_.art,
                  SkebStatusSkillGenre.comic =>
                    t.misskeyIO.skebStatus_.genres_.comic,
                  SkebStatusSkillGenre.voice =>
                    t.misskeyIO.skebStatus_.genres_.voice,
                  SkebStatusSkillGenre.novel =>
                    t.misskeyIO.skebStatus_.genres_.novel,
                  SkebStatusSkillGenre.video =>
                    t.misskeyIO.skebStatus_.genres_.video,
                  SkebStatusSkillGenre.music =>
                    t.misskeyIO.skebStatus_.genres_.music,
                  SkebStatusSkillGenre.correction =>
                    t.misskeyIO.skebStatus_.genres_.correction,
                  null => t.misskey.unknown,
                },
                t.misskeyIO.skebStatus_.yenX(
                  x: NumberFormat().format(skill.amount),
                ),
              ],
            if (skebStatus.creatorRequestCount > 0) ...[
              if (skebStatus.isAcceptable) '|',
              t.misskeyIO.skebStatus_.nWorks(
                n: NumberFormat().format(
                  skebStatus.creatorRequestCount,
                ),
              ),
            ] else if (skebStatus.clientRequestCount > 0)
              t.misskeyIO.skebStatus_.nRequests(
                n: NumberFormat().format(
                  skebStatus.clientRequestCount,
                ),
              ),
          ].join(' '),
          trailingSpans: [
            WidgetSpan(
              child: Icon(
                Icons.open_in_new,
                size: style.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
