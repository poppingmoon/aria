import 'package:aria/model/account.dart';
import 'package:aria/provider/api/i_notifier_provider.dart';
import 'package:aria/provider/check_word_mute_provider.dart';
import 'package:aria/provider/note_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../test_util/dummy_me_detailed.dart';
import '../test_util/dummy_note.dart';
import '../test_util/dummy_user_lite.dart';

ProviderContainer setupContainer({
  required Account account,
  required MeDetailed i,
  required Note note,
}) {
  return ProviderContainer.test(
    overrides: [
      iNotifierProvider(account).overrideWithBuild((_, _) => i),
      noteProvider(account, note.id).overrideWithValue(note),
    ],
  );
}

void main() {
  const account = Account(host: 'misskey.tld', username: 'testuser');

  group('AhoCorasick mode', () {
    test('should return false if mutedWords is empty', () {
      final container = setupContainer(
        account: account,
        i: dummyMeDetailed.copyWith(mutedWords: []),
        note: dummyNote.copyWith(text: 'foo'),
      );
      expect(container.read(noteProvider(account, '')), isNotNull);
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test(
      'should return true if mutedWords is not empty and text contains muted word',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [
              const MuteWord(content: ['foo']),
            ],
          ),
          note: dummyNote.copyWith(text: 'foo'),
        );
        expect(container.read(noteProvider(account, '')), isNotNull);
        expect(container.read(checkWordMuteProvider(account, '')), isTrue);
      },
    );

    test(
      'should return false if mutedWords is not empty and text does not contain muted word',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [
              const MuteWord(content: ['bar']),
            ],
          ),
          note: dummyNote.copyWith(text: 'foo'),
        );
        expect(container.read(noteProvider(account, '')), isNotNull);
        expect(container.read(checkWordMuteProvider(account, '')), isFalse);
      },
    );

    test(
      'should return false when the note is written by me even if mutedWords is not empty and text contains muted word',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [
              const MuteWord(content: ['foo']),
            ],
          ),
          note: dummyNote.copyWith(
            text: 'foo',
            user: dummyUserLite.copyWith(username: 'testuser'),
          ),
        );
        expect(container.read(noteProvider(account, '')), isNotNull);
        expect(container.read(checkWordMuteProvider(account, '')), isFalse);
      },
    );

    test(
      'should return true if mutedWords is not empty and text contains muted word in CW',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [
              const MuteWord(content: ['bar']),
            ],
          ),
          note: dummyNote.copyWith(text: 'foo', cw: 'bar'),
        );
        expect(container.read(noteProvider(account, '')), isNotNull);
        expect(container.read(checkWordMuteProvider(account, '')), isTrue);
      },
    );

    test(
      'should return true if mutedWords is not empty and text contains muted word in both CW and text',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [
              const MuteWord(content: ['foo']),
              const MuteWord(content: ['bar']),
            ],
          ),
          note: dummyNote.copyWith(text: 'foo', cw: 'bar'),
        );
        expect(container.read(noteProvider(account, '')), isNotNull);
        expect(container.read(checkWordMuteProvider(account, '')), isTrue);
      },
    );

    test(
      'should return false if mutedWords is not empty and text does not contain muted word in both CW and text',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [
              const MuteWord(content: ['baz']),
            ],
          ),
          note: dummyNote.copyWith(text: 'foo', cw: 'bar'),
        );
        expect(container.read(noteProvider(account, '')), isNotNull);
        expect(container.read(checkWordMuteProvider(account, '')), isFalse);
      },
    );
  });

  group('normal mode', () {
    test('should return false if text does not contain muted words', () {
      final container = setupContainer(
        account: account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['foo', 'bar']),
          ],
        ),
        note: dummyNote.copyWith(text: 'foo'),
      );
      expect(container.read(noteProvider(account, '')), isNotNull);
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test('should return true if text contains muted words', () {
      final container = setupContainer(
        account: account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['foo', 'bar']),
          ],
        ),
        note: dummyNote.copyWith(text: 'foobar'),
      );
      expect(container.read(noteProvider(account, '')), isNotNull);
      expect(container.read(checkWordMuteProvider(account, '')), isTrue);
    });

    test(
      'should return false when the note is written by me even if text contains muted words',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [
              const MuteWord(content: ['foo', 'bar']),
            ],
          ),
          note: dummyNote.copyWith(
            text: 'foo bar',
            user: dummyUserLite.copyWith(username: 'testuser'),
          ),
        );
        expect(container.read(noteProvider(account, '')), isNotNull);
        expect(container.read(checkWordMuteProvider(account, '')), isFalse);
      },
    );
  });

  group('RegExp mode', () {
    test('should return false if text does not contain muted words', () {
      final container = setupContainer(
        account: account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [const MuteWord(regExp: '/bar/')],
        ),
        note: dummyNote.copyWith(text: 'foo'),
      );
      expect(container.read(noteProvider(account, '')), isNotNull);
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test('should return true if text contains muted words', () {
      final container = setupContainer(
        account: account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [const MuteWord(regExp: '/bar/')],
        ),
        note: dummyNote.copyWith(text: 'foobar'),
      );
      expect(container.read(noteProvider(account, '')), isNotNull);
      expect(container.read(checkWordMuteProvider(account, '')), isTrue);
    });

    test(
      'should return false when the note is written by me even if text contains muted words',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [const MuteWord(regExp: '/bar/')],
          ),
          note: dummyNote.copyWith(
            text: 'foobar',
            user: dummyUserLite.copyWith(username: 'testuser'),
          ),
        );
        expect(container.read(checkWordMuteProvider(account, '')), isFalse);
      },
    );

    test(
      'should return true if ignoreCase flag is used and text contains muted words with different cases',
      () {
        final container = setupContainer(
          account: account,
          i: dummyMeDetailed.copyWith(
            mutedWords: [const MuteWord(regExp: '/bar/i')],
          ),
          note: dummyNote.copyWith(text: 'fooBar'),
        );
        expect(container.read(checkWordMuteProvider(account, '')), isTrue);
      },
    );
  });
}
