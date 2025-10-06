import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

const languages = [
  'ar-SA',
  'bn-BD',
  'ca-ES',
  'cs-CZ',
  'de-DE',
  'el-GR',
  'en-US',
  'es-ES',
  'fr-FR',
  'id-ID',
  'it-IT',
  'ja-JP',
  'ko-KR',
  'lo-LA',
  'nl-NL',
  'no-NO',
  'pl-PL',
  'pt-PT',
  'ro-RO',
  'ru-RU',
  'sk-SK',
  'sv-SE',
  'th-TH',
  'tr-TR',
  'uk-UA',
  'uz-UZ',
  'vi-VN',
  'zh-CN',
  'zh-TW',
];

const notificationKeys = [
  'youWereFollowed',
  'youGotMention',
  'youGotReply',
  'youRenoted',
  'youGotQuote',
  'newNote',
  'youReceivedFollowRequest',
  'yourFollowRequestAccepted',
  'achievementEarned',
  'login',
  'pollEnded',
  'scheduledNotePosted',
  'scheduledNotePostFailed',
  'roleAssigned',
  'chatRoomInvitationReceived',
  'createToken',
  'testNotification',
  'notificationWillBeDisplayedLikeThis',
];

const exportOfXCompleted = 'exportOfXCompleted';
const createTokenDescription = 'createTokenDescription';
const manageAccessTokens = 'manageAccessTokens';
const noteScheduled = 'noteScheduled';

const achievementTypes = [
  'notes1',
  'notes10',
  'notes100',
  'notes500',
  'notes1000',
  'notes5000',
  'notes10000',
  'notes20000',
  'notes30000',
  'notes40000',
  'notes50000',
  'notes60000',
  'notes70000',
  'notes80000',
  'notes90000',
  'notes100000',
  'login3',
  'login7',
  'login15',
  'login30',
  'login60',
  'login100',
  'login200',
  'login300',
  'login400',
  'login500',
  'login600',
  'login700',
  'login800',
  'login900',
  'login1000',
  'noteClipped1',
  'noteFavorited1',
  'myNoteFavorited1',
  'profileFilled',
  'markedAsCat',
  'following1',
  'following10',
  'following50',
  'following100',
  'following300',
  'followers1',
  'followers10',
  'followers50',
  'followers100',
  'followers300',
  'followers500',
  'followers1000',
  'collectAchievements30',
  'viewAchievements3min',
  'iLoveMisskey',
  'foundTreasure',
  'client30min',
  'client60min',
  'noteDeletedWithin1min',
  'postedAtLateNight',
  'postedAt0min0sec',
  'selfQuote',
  'htl20npm',
  'viewInstanceChart',
  'outputHelloWorldOnScratchpad',
  'open3windows',
  'driveFolderCircularReference',
  'reactWithoutRead',
  'clickedClickHere',
  'justPlainLucky',
  'setNameToSyuilo',
  'passedSinceAccountCreated1',
  'passedSinceAccountCreated2',
  'passedSinceAccountCreated3',
  'loggedInOnBirthday',
  'loggedInOnNewYearsDay',
  'cookieClicked',
  'brainDiver',
  'smashTestNotificationButton',
  'tutorialCompleted',
  'bubbleGameExplodingHead',
  'bubbleGameDoubleExplodingHead',
];

const userExportableEntityKeys = [
  'antennas',
  'blockedUsers',
  'clips',
  'customEmojis',
  'favorites',
  'following',
  'mutedUsers',
  'notes',
  'lists',
];

extension on String {
  String get capitalize => '${this[0].toUpperCase()}${substring(1)}';
}

void main() {
  final strings = Map<String, Map<String, String>>.fromIterable([
    ...[
      ...notificationKeys,
      createTokenDescription,
      noteScheduled,
    ].map((key) => '_notification.$key'),
    ...userExportableEntityKeys.map(
      (key) => '_notification.exportOf${key.capitalize}Completed',
    ),
    ...achievementTypes.map((type) => '_achievements._types._$type.title'),
  ], value: (_) => {});
  for (final language in languages) {
    final locale = switch (language) {
      'zh-CN' => 'zh-Hans',
      'zh-TW' => 'zh-Hant',
      _ => language.split('-')[0],
    };
    final localizations =
        loadYaml(File('misskey/locales/$language.yml').readAsStringSync())
            as YamlMap;
    if (localizations['_notification'] case final YamlMap notifications) {
      for (final key in notificationKeys) {
        if (notifications[key] case final String value) {
          strings['_notification.$key']?[locale] = value.replaceAll(
            RegExp('{.+}'),
            '%@',
          );
        }
      }
      if (notifications[exportOfXCompleted] case final String value) {
        for (final key in userExportableEntityKeys) {
          if (localizations[key] case final String x) {
            strings['_notification.exportOf${key.capitalize}Completed']?[locale] =
                value.replaceAll(RegExp('{.+}'), x);
          }
        }
      }
      if (notifications[createTokenDescription] case final String value) {
        if (localizations[manageAccessTokens] case final String text) {
          strings['_notification.$createTokenDescription']?[locale] = value
              .replaceAll(RegExp('{.+}'), text);
        }
      }
    }
    if (localizations['_achievements'] case {'_types': final YamlMap types}) {
      for (final type in achievementTypes) {
        if (types['_$type'] case final YamlMap achievement) {
          if (achievement['title'] case final String title) {
            strings['_achievements._types._$type.title']?[locale] = title;
          }
        }
      }
    }
    final ariaFile = File(
      language == 'en-US'
          ? 'lib/i18n/aria/aria.i18n.yaml'
          : 'lib/i18n/aria/aria_$language.i18n.yaml',
    );
    final ariaI18n = loadYaml(ariaFile.readAsStringSync()) as YamlMap;
    if (ariaI18n[noteScheduled] case final String value) {
      strings['_notification.$noteScheduled']?[locale] = value;
    }
  }
  final file = File('ios/Localizable.xcstrings');
  file.writeAsStringSync(
    const JsonEncoder.withIndent('  ').convert({
      '_': [
        'Generated file. Do not edit.',
        'Source: misskey/locales',
        'To regenerate, run: `dart run script/gen_localizable.dart`',
      ],
      'sourceLanguage': 'en',
      'strings': strings.map(
        (key, value) => MapEntry(key, {
          'extractionState': 'manual',
          'localizations': value.map(
            (key, value) => MapEntry(key, {
              'stringUnit': {'state': 'translated', 'value': value},
            }),
          ),
        }),
      ),
      'version': '1.0',
    }),
  );
  print('Successfully generated ${file.path}');
}
