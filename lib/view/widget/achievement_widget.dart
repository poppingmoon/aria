import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';

class AchievementWidget extends StatelessWidget {
  const AchievementWidget({super.key, required this.achievement});

  final String achievement;

  @override
  Widget build(BuildContext context) {
    return switch (achievement) {
      'notes1' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(text: t.misskey.achievements_.types_.notes1_.description),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.notes1_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.notes1_.title),
      ),
      'notes10' => Tooltip(
        message: t.misskey.achievements_.types_.notes10_.description,
        child: Text(t.misskey.achievements_.types_.notes10_.title),
      ),
      'notes100' => Tooltip(
        message: t.misskey.achievements_.types_.notes100_.description,
        child: Text(t.misskey.achievements_.types_.notes100_.title),
      ),
      'notes500' => Tooltip(
        message: t.misskey.achievements_.types_.notes500_.description,
        child: Text(t.misskey.achievements_.types_.notes500_.title),
      ),
      'notes1000' => Tooltip(
        message: t.misskey.achievements_.types_.notes1000_.description,
        child: Text(t.misskey.achievements_.types_.notes1000_.title),
      ),
      'notes5000' => Tooltip(
        message: t.misskey.achievements_.types_.notes5000_.description,
        child: Text(t.misskey.achievements_.types_.notes5000_.title),
      ),
      'notes10000' => Tooltip(
        message: t.misskey.achievements_.types_.notes10000_.description,
        child: Text(t.misskey.achievements_.types_.notes10000_.title),
      ),
      'notes20000' => Tooltip(
        message: t.misskey.achievements_.types_.notes20000_.description,
        child: Text(t.misskey.achievements_.types_.notes20000_.title),
      ),
      'notes30000' => Tooltip(
        message: t.misskey.achievements_.types_.notes30000_.description,
        child: Text(t.misskey.achievements_.types_.notes30000_.title),
      ),
      'notes40000' => Tooltip(
        message: t.misskey.achievements_.types_.notes40000_.description,
        child: Text(t.misskey.achievements_.types_.notes40000_.title),
      ),
      'notes50000' => Tooltip(
        message: t.misskey.achievements_.types_.notes50000_.description,
        child: Text(t.misskey.achievements_.types_.notes50000_.title),
      ),
      'notes60000' => Tooltip(
        message: t.misskey.achievements_.types_.notes60000_.description,
        child: Text(t.misskey.achievements_.types_.notes60000_.title),
      ),
      'notes70000' => Tooltip(
        message: t.misskey.achievements_.types_.notes70000_.description,
        child: Text(t.misskey.achievements_.types_.notes70000_.title),
      ),
      'notes80000' => Tooltip(
        message: t.misskey.achievements_.types_.notes80000_.description,
        child: Text(t.misskey.achievements_.types_.notes80000_.title),
      ),
      'notes90000' => Tooltip(
        message: t.misskey.achievements_.types_.notes90000_.description,
        child: Text(t.misskey.achievements_.types_.notes90000_.title),
      ),
      'notes100000' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t.misskey.achievements_.types_.notes100000_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.notes100000_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.notes100000_.title),
      ),
      'login3' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(text: t.misskey.achievements_.types_.login3_.description),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.login3_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.login3_.title),
      ),
      'login7' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(text: t.misskey.achievements_.types_.login7_.description),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.login7_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.login7_.title),
      ),
      'login15' => Tooltip(
        message: t.misskey.achievements_.types_.login15_.description,
        child: Text(t.misskey.achievements_.types_.login15_.title),
      ),
      'login30' => Tooltip(
        message: t.misskey.achievements_.types_.login30_.description,
        child: Text(t.misskey.achievements_.types_.login30_.title),
      ),
      'login60' => Tooltip(
        message: t.misskey.achievements_.types_.login60_.description,
        child: Text(t.misskey.achievements_.types_.login60_.title),
      ),
      'login100' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t.misskey.achievements_.types_.login100_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.login100_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.login100_.title),
      ),
      'login200' => Tooltip(
        message: t.misskey.achievements_.types_.login200_.description,
        child: Text(t.misskey.achievements_.types_.login200_.title),
      ),
      'login300' => Tooltip(
        message: t.misskey.achievements_.types_.login300_.description,
        child: Text(t.misskey.achievements_.types_.login300_.title),
      ),
      'login400' => Tooltip(
        message: t.misskey.achievements_.types_.login400_.description,
        child: Text(t.misskey.achievements_.types_.login400_.title),
      ),
      'login500' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t.misskey.achievements_.types_.login500_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.login500_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.login500_.title),
      ),
      'login600' => Tooltip(
        message: t.misskey.achievements_.types_.login600_.description,
        child: Text(t.misskey.achievements_.types_.login600_.title),
      ),
      'login700' => Tooltip(
        message: t.misskey.achievements_.types_.login700_.description,
        child: Text(t.misskey.achievements_.types_.login700_.title),
      ),
      'login800' => Tooltip(
        message: t.misskey.achievements_.types_.login800_.description,
        child: Text(t.misskey.achievements_.types_.login800_.title),
      ),
      'login900' => Tooltip(
        message: t.misskey.achievements_.types_.login900_.description,
        child: Text(t.misskey.achievements_.types_.login900_.title),
      ),
      'login1000' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t.misskey.achievements_.types_.login1000_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.login1000_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.login1000_.title),
      ),
      'noteClipped1' => Tooltip(
        message: t.misskey.achievements_.types_.noteClipped1_.description,
        child: Text(t.misskey.achievements_.types_.noteClipped1_.title),
      ),
      'noteFavorited1' => Tooltip(
        message: t.misskey.achievements_.types_.noteFavorited1_.description,
        child: Text(t.misskey.achievements_.types_.noteFavorited1_.title),
      ),
      'myNoteFavorited1' => Tooltip(
        message: t.misskey.achievements_.types_.myNoteFavorited1_.description,
        child: Text(t.misskey.achievements_.types_.myNoteFavorited1_.title),
      ),
      'profileFilled' => Tooltip(
        message: t.misskey.achievements_.types_.profileFilled_.description,
        child: Text(t.misskey.achievements_.types_.profileFilled_.title),
      ),
      'markedAsCat' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t.misskey.achievements_.types_.markedAsCat_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.markedAsCat_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.markedAsCat_.title),
      ),
      'following1' => Tooltip(
        message: t.misskey.achievements_.types_.following1_.description,
        child: Text(t.misskey.achievements_.types_.following1_.title),
      ),
      'following10' => Tooltip(
        message: t.misskey.achievements_.types_.following10_.description,
        child: Text(t.misskey.achievements_.types_.following10_.title),
      ),
      'following50' => Tooltip(
        message: t.misskey.achievements_.types_.following50_.description,
        child: Text(t.misskey.achievements_.types_.following50_.title),
      ),
      'following100' => Tooltip(
        message: t.misskey.achievements_.types_.following100_.description,
        child: Text(t.misskey.achievements_.types_.following100_.title),
      ),
      'following300' => Tooltip(
        message: t.misskey.achievements_.types_.following300_.description,
        child: Text(t.misskey.achievements_.types_.following300_.title),
      ),
      'followers1' => Tooltip(
        message: t.misskey.achievements_.types_.followers1_.description,
        child: Text(t.misskey.achievements_.types_.followers1_.title),
      ),
      'followers10' => Tooltip(
        message: t.misskey.achievements_.types_.followers10_.description,
        child: Text(t.misskey.achievements_.types_.followers10_.title),
      ),
      'followers50' => Tooltip(
        message: t.misskey.achievements_.types_.followers50_.description,
        child: Text(t.misskey.achievements_.types_.followers50_.title),
      ),
      'followers100' => Tooltip(
        message: t.misskey.achievements_.types_.followers100_.description,
        child: Text(t.misskey.achievements_.types_.followers100_.title),
      ),
      'followers300' => Tooltip(
        message: t.misskey.achievements_.types_.followers300_.description,
        child: Text(t.misskey.achievements_.types_.followers300_.title),
      ),
      'followers500' => Tooltip(
        message: t.misskey.achievements_.types_.followers500_.description,
        child: Text(t.misskey.achievements_.types_.followers500_.title),
      ),
      'followers1000' => Tooltip(
        message: t.misskey.achievements_.types_.followers1000_.description,
        child: Text(t.misskey.achievements_.types_.followers1000_.title),
      ),
      'collectAchievements30' => Tooltip(
        message:
            t.misskey.achievements_.types_.collectAchievements30_.description,
        child: Text(
          t.misskey.achievements_.types_.collectAchievements30_.title,
        ),
      ),
      'viewAchievements3min' => Tooltip(
        message:
            t.misskey.achievements_.types_.viewAchievements3min_.description,
        child: Text(t.misskey.achievements_.types_.viewAchievements3min_.title),
      ),
      'iLoveMisskey' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t.misskey.achievements_.types_.iLoveMisskey_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.iLoveMisskey_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.iLoveMisskey_.title),
      ),
      'foundTreasure' => Tooltip(
        message: t.misskey.achievements_.types_.foundTreasure_.description,
        child: Text(t.misskey.achievements_.types_.foundTreasure_.title),
      ),
      'client30min' => Tooltip(
        message: t.misskey.achievements_.types_.client30min_.description,
        child: Text(t.misskey.achievements_.types_.client30min_.title),
      ),
      'client60min' => Tooltip(
        message: t.misskey.achievements_.types_.client60min_.description,
        child: Text(t.misskey.achievements_.types_.client60min_.title),
      ),
      'noteDeletedWithin1min' => Tooltip(
        message:
            t.misskey.achievements_.types_.noteDeletedWithin1min_.description,
        child: Text(
          t.misskey.achievements_.types_.noteDeletedWithin1min_.title,
        ),
      ),
      'postedAtLateNight' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text:
                  t.misskey.achievements_.types_.postedAtLateNight_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.postedAtLateNight_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.postedAtLateNight_.title),
      ),
      'postedAt0min0sec' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text:
                  t.misskey.achievements_.types_.postedAt0min0sec_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.postedAt0min0sec_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.postedAt0min0sec_.title),
      ),
      'selfQuote' => Tooltip(
        message: t.misskey.achievements_.types_.selfQuote_.description,
        child: Text(t.misskey.achievements_.types_.selfQuote_.title),
      ),
      'htl20npm' => Tooltip(
        message: t.misskey.achievements_.types_.htl20npm_.description,
        child: Text(t.misskey.achievements_.types_.htl20npm_.title),
      ),
      'viewInstanceChart' => Tooltip(
        message: t.misskey.achievements_.types_.viewInstanceChart_.description,
        child: Text(t.misskey.achievements_.types_.viewInstanceChart_.title),
      ),
      'outputHelloWorldOnScratchpad' => Tooltip(
        message: t
            .misskey
            .achievements_
            .types_
            .outputHelloWorldOnScratchpad_
            .description,
        child: Text(
          t.misskey.achievements_.types_.outputHelloWorldOnScratchpad_.title,
        ),
      ),
      'open3windows' => Tooltip(
        message: t.misskey.achievements_.types_.open3windows_.description,
        child: Text(t.misskey.achievements_.types_.open3windows_.title),
      ),
      'driveFolderCircularReference' => Tooltip(
        message: t
            .misskey
            .achievements_
            .types_
            .driveFolderCircularReference_
            .description,
        child: Text(
          t.misskey.achievements_.types_.driveFolderCircularReference_.title,
        ),
      ),
      'reactWithoutRead' => Tooltip(
        message: t.misskey.achievements_.types_.reactWithoutRead_.description,
        child: Text(t.misskey.achievements_.types_.reactWithoutRead_.title),
      ),
      'clickedClickHere' => Tooltip(
        message: t.misskey.achievements_.types_.clickedClickHere_.description,
        child: Text(t.misskey.achievements_.types_.clickedClickHere_.title),
      ),
      'justPlainLucky' => Tooltip(
        message: t.misskey.achievements_.types_.justPlainLucky_.description,
        child: Text(t.misskey.achievements_.types_.justPlainLucky_.title),
      ),
      'setNameToSyuilo' => Tooltip(
        message: t.misskey.achievements_.types_.setNameToSyuilo_.description,
        child: Text(t.misskey.achievements_.types_.setNameToSyuilo_.title),
      ),
      'passedSinceAccountCreated1' => Tooltip(
        message: t
            .misskey
            .achievements_
            .types_
            .passedSinceAccountCreated1_
            .description,
        child: Text(
          t.misskey.achievements_.types_.passedSinceAccountCreated1_.title,
        ),
      ),
      'passedSinceAccountCreated2' => Tooltip(
        message: t
            .misskey
            .achievements_
            .types_
            .passedSinceAccountCreated2_
            .description,
        child: Text(
          t.misskey.achievements_.types_.passedSinceAccountCreated2_.title,
        ),
      ),
      'passedSinceAccountCreated3' => Tooltip(
        message: t
            .misskey
            .achievements_
            .types_
            .passedSinceAccountCreated3_
            .description,
        child: Text(
          t.misskey.achievements_.types_.passedSinceAccountCreated3_.title,
        ),
      ),
      'loggedInOnBirthday' => Tooltip(
        message: t.misskey.achievements_.types_.loggedInOnBirthday_.description,
        child: Text(t.misskey.achievements_.types_.loggedInOnBirthday_.title),
      ),
      'loggedInOnNewYearsDay' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t
                  .misskey
                  .achievements_
                  .types_
                  .loggedInOnNewYearsDay_
                  .description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text:
                  t.misskey.achievements_.types_.loggedInOnNewYearsDay_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(
          t.misskey.achievements_.types_.loggedInOnNewYearsDay_.title,
        ),
      ),
      'cookieClicked' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t.misskey.achievements_.types_.cookieClicked_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.cookieClicked_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.cookieClicked_.title),
      ),
      'brainDiver' => Tooltip(
        richMessage: TextSpan(
          children: [
            TextSpan(
              text: t.misskey.achievements_.types_.brainDiver_.description,
            ),
            const TextSpan(text: '\n\n'),
            TextSpan(
              text: t.misskey.achievements_.types_.brainDiver_.flavor,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
        child: Text(t.misskey.achievements_.types_.brainDiver_.title),
      ),
      'smashTestNotificationButton' => Tooltip(
        message: t
            .misskey
            .achievements_
            .types_
            .smashTestNotificationButton_
            .description,
        child: Text(
          t.misskey.achievements_.types_.smashTestNotificationButton_.title,
        ),
      ),
      'tutorialCompleted' => Tooltip(
        message: t.misskey.achievements_.types_.tutorialCompleted_.description,
        child: Text(t.misskey.achievements_.types_.tutorialCompleted_.title),
      ),
      _ => const SizedBox.shrink(),
    };
  }
}
