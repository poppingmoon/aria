import 'package:aria/model/account.dart';
import 'package:aria/provider/check_word_mute_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../test_util/create_container.dart';
import '../../test_util/dummy_me_detailed.dart';
import '../../test_util/dummy_note.dart';

void main() {
  const account = Account(host: 'misskey.tld', username: 'testuser');

  group('AhoCorasick mode', () {
    test('should return false if mutedWords is empty', () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed,
        note: dummyNote.copyWith(userId: '1', text: 'foo'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test(
        'should return true if mutedWords is not empty and text contains muted word',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['foo']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isTrue);
    });

    test(
        'should return false if mutedWords is not empty and text does not contain muted word',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['bar']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test(
        'should return false when the note is written by me even if mutedWords is not empty and text contains muted word',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          id: '1',
          mutedWords: [
            const MuteWord(content: ['foo']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test(
        'should return true if mutedWords is not empty and text contains muted word in CW',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['bar']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo', cw: 'bar'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isTrue);
    });

    test(
        'should return true if mutedWords is not empty and text contains muted word in both CW and text',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['foo']),
            const MuteWord(content: ['bar']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo', cw: 'bar'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isTrue);
    });

    test(
        'should return false if mutedWords is not empty and text does not contain muted word in both CW and text',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['baz']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo', cw: 'bar'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });
  });

  group('normal mode', () {
    test('should return false if text does not contain muted words', () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['foo', 'bar']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test('should return true if text contains muted words', () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(content: ['foo', 'bar']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foobar'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isTrue);
    });

    test(
        'should return false when the note is written by me even if text contains muted words',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          id: '1',
          mutedWords: [
            const MuteWord(content: ['foo', 'bar']),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo bar'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });
  });

  group('RegExp mode', () {
    test('should return false if text does not contain muted words', () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(regExp: '/bar/'),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foo'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test('should return true if text contains muted words', () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(regExp: '/bar/'),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foobar'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isTrue);
    });

    test(
        'should return false when the note is written by me even if text contains muted words',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          id: '1',
          mutedWords: [
            const MuteWord(regExp: '/bar/'),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'foobar'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isFalse);
    });

    test(
        'should return true if ignoreCase flag is used and text contains muted words with different cases',
        () async {
      final container = await createContainer(
        account,
        i: dummyMeDetailed.copyWith(
          mutedWords: [
            const MuteWord(regExp: '/bar/i'),
          ],
        ),
        note: dummyNote.copyWith(userId: '1', text: 'fooBar'),
      );
      expect(container.read(checkWordMuteProvider(account, '')), isTrue);
    });
  });
}
