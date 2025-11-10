import 'package:aria/i18n/strings.g.dart';
import 'package:aria/model/account.dart';
import 'package:aria/model/account_settings.dart';
import 'package:aria/model/general_settings.dart';
import 'package:aria/provider/account_settings_notifier_provider.dart';
import 'package:aria/provider/accounts_notifier_provider.dart';
import 'package:aria/provider/api/i_notifier_provider.dart';
import 'package:aria/provider/api/meta_notifier_provider.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/provider/note_is_deleted_notifier_provider.dart';
import 'package:aria/provider/note_notifier_provider.dart';
import 'package:aria/provider/server_url_notifier_provider.dart';
import 'package:aria/view/widget/emoji_picker.dart';
import 'package:aria/view/widget/instance_ticker_widget.dart';
import 'package:aria/view/widget/media_list.dart';
import 'package:aria/view/widget/note_footer.dart';
import 'package:aria/view/widget/note_sheet.dart';
import 'package:aria/view/widget/note_simple_widget.dart';
import 'package:aria/view/widget/note_sub_widget.dart';
import 'package:aria/view/widget/note_widget.dart';
import 'package:aria/view/widget/poll_widget.dart';
import 'package:aria/view/widget/reactions_viewer.dart';
import 'package:aria/view/widget/renote_header.dart';
import 'package:aria/view/widget/url_preview.dart';
import 'package:aria/view/widget/user_avatar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/misc.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../test_util/dummy_drive_file.dart';
import '../../test_util/dummy_me_detailed.dart';
import '../../test_util/dummy_note.dart';
import '../../test_util/dummy_user_lite.dart';

Future<void> setupWidget(
  WidgetTester tester, {
  required Account account,
  required String noteId,
  bool withHardMute = true,
  void Function()? focusPostForm,
  Note? note,
  bool? showFooter,
  Color? backgroundColor,
  GeneralSettings generalSettings = const GeneralSettings(),
  MeDetailed? i,
  List<Override> overrides = const [],
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        accountsNotifierProvider.overrideWithValue([account]),
        accountSettingsNotifierProvider(
          account,
        ).overrideWithValue(const AccountSettings()),
        generalSettingsNotifierProvider.overrideWithValue(generalSettings),
        iNotifierProvider(account).overrideWithBuild(
          (_, _) => i ?? dummyMeDetailed.copyWith(id: 'testuser'),
        ),
        metaNotifierProvider(
          account.host,
        ).overrideWithBuild((_, _) => const MetaResponse()),
        serverUrlNotifierProvider(
          account.host,
        ).overrideWithValue(Uri.https(account.host)),
        ...overrides,
      ],
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (_, _) => Scaffold(
                body: NoteWidget(
                  account: account,
                  noteId: noteId,
                  withHardMute: withHardMute,
                  focusPostForm: focusPostForm,
                  note: note,
                  showFooter: showFooter,
                  backgroundColor: backgroundColor,
                ),
              ),
            ),
          ],
        ),
        themeMode: ThemeMode.light,
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  group('deleted', () {
    testWidgets('should not show a note if not stored', (tester) async {
      const account = Account(host: 'misskey.tld');
      await setupWidget(tester, account: account, noteId: 'test');
      await tester.pumpAndSettle();
      expect(find.byType(Text), findsNothing);
    });

    testWidgets(
      'should show a placeholder if the renote target is not stored',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', renoteId: 'renote');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
            noteIsDeletedNotifierProvider(
              account,
              note.renoteId!,
            ).overrideWithValue(true),
          ],
        );
        expect(find.text(t.misskey.deletedNote), findsOne);
      },
    );

    testWidgets('should show a placeholder if the reply target is not stored', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', replyId: 'reply');
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
          noteIsDeletedNotifierProvider(
            account,
            note.replyId!,
          ).overrideWithValue(true),
        ],
      );
      expect(find.text(t.misskey.deletedNote), findsOne);
    });
  });

  group('mute', () {
    testWidgets('should not show a hard muted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'this note should be muted',
        user: const UserLite(id: '', username: 'testuser2'),
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        i: dummyMeDetailed.copyWith(
          id: 'testuser',
          hardMutedWords: const [
            MuteWord(content: ['mute']),
          ],
        ),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(find.text('this note should be muted'), findsNothing);
      expect(find.textContaining('testuser2'), findsNothing);
    });

    testWidgets('should show a hard muted note if disabled', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'this note should be muted',
        user: const UserLite(id: '', username: 'testuser2'),
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        withHardMute: false,
        i: dummyMeDetailed.copyWith(
          id: 'testuser',
          hardMutedWords: const [
            MuteWord(content: ['mute']),
          ],
        ),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(find.text('this note should be muted'), findsNothing);
      expect(find.textContaining('testuser2'), findsOne);
    });

    testWidgets('should not show a muted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'this note should be muted',
        user: const UserLite(id: '', username: 'testuser2'),
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        i: dummyMeDetailed.copyWith(
          id: 'testuser',
          mutedWords: const [
            MuteWord(content: ['mute']),
          ],
        ),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(find.text('this note should be muted'), findsNothing);
      expect(find.textContaining('testuser2'), findsOne);
      await tester.tap(find.byType(InkWell));
      await tester.pumpAndSettle();
      expect(find.text('this note should be muted'), findsOne);
    });
  });

  group('background', () {
    testWidgets('should be panel color', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(
        tester
            .firstWidget<Material>(
              find.descendant(
                of: find.byType(NoteWidget),
                matching: find.byType(Material),
              ),
            )
            .color,
        Theme.of(tester.element(find.byType(NoteWidget))).colorScheme.surface,
      );
    });

    testWidgets('should override default color if specified', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        backgroundColor: Colors.amber,
        generalSettings: const GeneralSettings(
          publicNoteBackgroundColor: Colors.blue,
        ),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(
        tester
            .firstWidget<Material>(
              find.descendant(
                of: find.byType(NoteWidget),
                matching: find.byType(Material),
              ),
            )
            .color,
        Colors.amber,
      );
    });

    testWidgets(
      'should be public note background color if visibility is public',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            publicNoteBackgroundColor: Colors.amber,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        expect(
          tester
              .firstWidget<Material>(
                find.descendant(
                  of: find.byType(NoteWidget),
                  matching: find.byType(Material),
                ),
              )
              .color,
          Colors.amber,
        );
      },
    );

    testWidgets('should be home note background color if visibility is home', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        visibility: NoteVisibility.home,
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        generalSettings: const GeneralSettings(
          homeNoteBackgroundColor: Colors.amber,
        ),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(
        tester
            .firstWidget<Material>(
              find.descendant(
                of: find.byType(NoteWidget),
                matching: find.byType(Material),
              ),
            )
            .color,
        Colors.amber,
      );
    });

    testWidgets(
      'should be followers note background color if visibility is followers',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(
          id: 'test',
          visibility: NoteVisibility.followers,
        );
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            followersNoteBackgroundColor: Colors.amber,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        expect(
          tester
              .firstWidget<Material>(
                find.descendant(
                  of: find.byType(NoteWidget),
                  matching: find.byType(Material),
                ),
              )
              .color,
          Colors.amber,
        );
      },
    );

    testWidgets(
      'should be specified note background color if visibility is specified',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(
          id: 'test',
          visibility: NoteVisibility.specified,
        );
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            specifiedNoteBackgroundColor: Colors.amber,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        expect(
          tester
              .firstWidget<Material>(
                find.descendant(
                  of: find.byType(NoteWidget),
                  matching: find.byType(Material),
                ),
              )
              .color,
          Colors.amber,
        );
      },
    );

    testWidgets('should be panel color if visibility is unknown', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', visibility: null);
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        generalSettings: const GeneralSettings(
          publicNoteBackgroundColor: Colors.amber,
          homeNoteBackgroundColor: Colors.amber,
          followersNoteBackgroundColor: Colors.amber,
          specifiedNoteBackgroundColor: Colors.amber,
        ),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(
        tester
            .firstWidget<Material>(
              find.descendant(
                of: find.byType(NoteWidget),
                matching: find.byType(Material),
              ),
            )
            .color,
        Theme.of(tester.element(find.byType(NoteWidget))).colorScheme.surface,
      );
    });
  });

  group('action', () {
    group('tap', () {
      testWidgets('should do nothing for a dummy note', (tester) async {
        const account = Account(host: 'misskey.tld');
        await setupWidget(
          tester,
          account: account,
          noteId: '',
          note: dummyNote.copyWith(text: 'text'),
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/'), findsNothing);
        expect(find.byType(NoteSheet), findsNothing);
        expect(find.byType(EmojiPicker), findsNothing);
      });

      testWidgets('should do nothing if action type is none', (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteTapAction: NoteActionType.none,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/'), findsNothing);
        expect(find.byType(NoteSheet), findsNothing);
        expect(find.byType(EmojiPicker), findsNothing);
      });

      testWidgets('should open a note page if action type is expand', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/test'), findsOne);
      });

      testWidgets('should open a note sheet if action type is menu', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteTapAction: NoteActionType.menu,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(find.byType(NoteSheet), findsOne);
      });

      testWidgets(
        'should not show an emoji picker if action type is reaction and guest',
        (tester) async {
          const account = Account(host: 'misskey.tld');
          final note = dummyNote.copyWith(id: 'test', text: 'text');
          await setupWidget(
            tester,
            account: account,
            noteId: note.id,
            generalSettings: const GeneralSettings(
              noteTapAction: NoteActionType.reaction,
            ),
            overrides: [
              noteNotifierProvider(account, note.id).overrideWithValue(note),
            ],
          );
          await tester.tap(find.text('text'));
          await tester.pump(kDoubleTapTimeout);
          await tester.pumpAndSettle();
          expect(find.byType(EmojiPicker), findsNothing);
        },
      );

      testWidgets('should show an emoji picker if action type is reaction', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteTapAction: NoteActionType.reaction,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(find.byType(EmojiPicker), findsOne);
      });
    });

    group('long press', () {
      testWidgets('should do nothing for a dummy note', (tester) async {
        const account = Account(host: 'misskey.tld');
        await setupWidget(
          tester,
          account: account,
          noteId: '',
          note: dummyNote.copyWith(text: 'text'),
          generalSettings: const GeneralSettings(
            noteLongPressAction: NoteActionType.expand,
          ),
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/'), findsNothing);
        expect(find.byType(NoteSheet), findsNothing);
        expect(find.byType(EmojiPicker), findsNothing);
      });

      testWidgets('should do nothing if action type is none', (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteTapAction: NoteActionType.none,
            noteLongPressAction: NoteActionType.none,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.longPress(find.text('text'));
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/'), findsNothing);
        expect(find.byType(NoteSheet), findsNothing);
        expect(find.byType(EmojiPicker), findsNothing);
      });

      testWidgets('should open a note page if action type is expand', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteLongPressAction: NoteActionType.expand,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.longPress(find.text('text'));
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/test'), findsOne);
      });

      testWidgets('should open a note sheet if action type is menu', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteLongPressAction: NoteActionType.menu,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.longPress(find.text('text'));
        await tester.pumpAndSettle();
        expect(find.byType(NoteSheet), findsOne);
      });

      testWidgets(
        'should not show an emoji picker if action type is reaction and guest',
        (tester) async {
          const account = Account(host: 'misskey.tld');
          final note = dummyNote.copyWith(id: 'test', text: 'text');
          await setupWidget(
            tester,
            account: account,
            noteId: note.id,
            overrides: [
              noteNotifierProvider(account, note.id).overrideWithValue(note),
            ],
          );
          await tester.longPress(find.text('text'));
          await tester.pumpAndSettle();
          expect(find.byType(EmojiPicker), findsNothing);
        },
      );

      testWidgets('should show an emoji picker if action type is reaction', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.longPress(find.text('text'));
        await tester.pumpAndSettle();
        expect(find.byType(EmojiPicker), findsOne);
      });
    });

    group('double tap', () {
      testWidgets('should do nothing for a dummy note', (tester) async {
        const account = Account(host: 'misskey.tld');
        await setupWidget(
          tester,
          account: account,
          noteId: '',
          note: dummyNote.copyWith(text: 'text'),
          generalSettings: const GeneralSettings(
            noteDoubleTapAction: NoteActionType.expand,
          ),
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapMinTime);
        await tester.tap(find.text('text'));
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/'), findsNothing);
        expect(find.byType(NoteSheet), findsNothing);
        expect(find.byType(EmojiPicker), findsNothing);
      });

      testWidgets('should do nothing if action type is none', (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteTapAction: NoteActionType.none,
            noteDoubleTapAction: NoteActionType.none,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/'), findsNothing);
        expect(find.byType(NoteSheet), findsNothing);
        expect(find.byType(EmojiPicker), findsNothing);
      });

      testWidgets('should open a note page if action type is expand', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteDoubleTapAction: NoteActionType.expand,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapMinTime);
        await tester.tap(find.text('text'));
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/notes/test'), findsOne);
      });

      testWidgets('should open a note sheet if action type is menu', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapMinTime);
        await tester.tap(find.text('text'));
        await tester.pumpAndSettle();
        expect(find.byType(NoteSheet), findsOne);
      });

      testWidgets(
        'should not show an emoji picker if action type is reaction and guest',
        (tester) async {
          const account = Account(host: 'misskey.tld');
          final note = dummyNote.copyWith(id: 'test', text: 'text');
          await setupWidget(
            tester,
            account: account,
            noteId: note.id,
            generalSettings: const GeneralSettings(
              noteDoubleTapAction: NoteActionType.reaction,
            ),
            overrides: [
              noteNotifierProvider(account, note.id).overrideWithValue(note),
            ],
          );
          await tester.tap(find.text('text'));
          await tester.pump(kDoubleTapMinTime);
          await tester.tap(find.text('text'), warnIfMissed: false);
          await tester.pumpAndSettle();
          expect(find.byType(EmojiPicker), findsNothing);
        },
      );

      testWidgets('should show an emoji picker if action type is reaction', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final note = dummyNote.copyWith(id: 'test', text: 'text');
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(
            noteDoubleTapAction: NoteActionType.reaction,
          ),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.tap(find.text('text'));
        await tester.pump(kDoubleTapMinTime);
        await tester.tap(find.text('text'));
        await tester.pumpAndSettle();
        expect(find.byType(EmojiPicker), findsOne);
      });
    });
  });

  group('reply', () {
    testWidgets('should show reply', (tester) async {
      const account = Account(host: 'misskey.tld');
      final reply = dummyNote.copyWith(id: 'reply', text: 'reply text');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'note text',
        replyId: reply.id,
        reply: reply,
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
          noteNotifierProvider(account, reply.id).overrideWithValue(reply),
        ],
      );
      expect(find.byType(NoteSubWidget), findsOne);
      expect(find.text('reply text'), findsOne);
      expect(find.byIcon(Icons.reply), findsExactly(2));
      expect(find.textContaining('note text'), findsOne);
      await tester.tap(find.byIcon(Icons.reply).first);
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.textContaining('/misskey.tld/notes/reply'), findsOne);
    });
  });

  group('renote', () {
    testWidgets('should show renote header', (tester) async {
      const account = Account(host: 'misskey.tld');
      final renote = dummyNote.copyWith(id: 'renote', text: 'renote text');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
          noteNotifierProvider(account, renote.id).overrideWithValue(renote),
        ],
      );
      expect(find.byType(RenoteHeader), findsOne);
      expect(find.text('renote text'), findsOne);
      expect(find.byType(NoteFooter), findsOne);
      await tester.tap(find.byType(RenoteHeader));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.textContaining('/misskey.tld/notes/test'), findsOne);
    });

    testWidgets('should not collapse renote if disabled', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote', text: 'renote text');
      final note = dummyNote.copyWith(
        id: 'test',
        userId: 'testuser',
        user: dummyUserLite.copyWith(id: 'testuser', username: 'testuser'),
        renoteId: renote.id,
        renote: renote,
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        generalSettings: const GeneralSettings(collapseRenotes: false),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
          noteNotifierProvider(account, renote.id).overrideWithValue(renote),
        ],
      );
      expect(find.byType(RenoteHeader), findsOne);
      expect(find.text('renote text'), findsOne);
      expect(find.byType(NoteFooter), findsOne);
    });

    testWidgets('should collapse my renote', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote', text: 'renote text');
      final note = dummyNote.copyWith(
        id: 'test',
        userId: 'testuser',
        user: dummyUserLite.copyWith(id: 'testuser', username: 'testuser'),
        renoteId: renote.id,
        renote: renote,
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
          noteNotifierProvider(account, renote.id).overrideWithValue(renote),
        ],
      );
      expect(find.byType(RenoteHeader), findsOne);
      expect(find.text('renote text'), findsOne);
      expect(find.byType(NoteFooter), findsNothing);
      await tester.tap(find.text('renote text'));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.byType(RenoteHeader), findsOne);
      expect(find.text('renote text'), findsOne);
      expect(find.byType(NoteFooter), findsOne);
    });

    testWidgets('should collapse renote of my note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(
        id: 'renote',
        userId: 'testuser',
        user: dummyUserLite.copyWith(id: 'testuser', username: 'testuser'),
        text: 'renote text',
      );
      final note = dummyNote.copyWith(
        id: 'test',
        userId: 'testuser2',
        user: dummyUserLite.copyWith(id: 'testuser2', username: 'testuser2'),
        renoteId: renote.id,
        renote: renote,
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
          noteNotifierProvider(account, renote.id).overrideWithValue(renote),
        ],
      );
      expect(find.byType(RenoteHeader), findsOne);
      expect(find.text('renote text'), findsOne);
      expect(find.byType(NoteFooter), findsNothing);
      await tester.tap(find.text('renote text'));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.byType(RenoteHeader), findsOne);
      expect(find.text('renote text'), findsOne);
      expect(find.byType(NoteFooter), findsOne);
    });

    testWidgets('should collapse renote with my reaction', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(
        id: 'renote',
        text: 'renote text',
        myReaction: ':emoji:',
      );
      final note = dummyNote.copyWith(
        id: 'test',
        userId: 'testuser2',
        user: dummyUserLite.copyWith(id: 'testuser2', username: 'testuser2'),
        renoteId: renote.id,
        renote: renote,
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
          noteNotifierProvider(account, renote.id).overrideWithValue(renote),
        ],
      );
      expect(find.byType(RenoteHeader), findsOne);
      expect(find.text('renote text'), findsOne);
      expect(find.byType(NoteFooter), findsNothing);
      await tester.tap(find.text('renote text'));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.byType(RenoteHeader), findsOne);
      expect(find.text('renote text'), findsOne);
      expect(find.byType(NoteFooter), findsOne);
    });
  });

  group('avatar', () {
    group('renote', () {
      testWidgets('should not show an user avatar if disabled', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final renote = dummyNote.copyWith(
          id: 'renote',
          userId: 'testuser',
          text: 'renote text',
        );
        final note = dummyNote.copyWith(
          id: 'test',
          userId: 'testuser',
          user: dummyUserLite.copyWith(id: 'testuser', username: 'testuser'),
          renoteId: renote.id,
          renote: renote,
        );
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(showAvatarsInNote: false),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
            noteNotifierProvider(account, renote.id).overrideWithValue(renote),
          ],
        );
        expect(find.byType(UserAvatar), findsNothing);
      });

      testWidgets('should show an user avatar', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final renote = dummyNote.copyWith(
          id: 'renote',
          userId: 'testuser',
          text: 'renote text',
        );
        final note = dummyNote.copyWith(
          id: 'test',
          userId: 'testuser',
          user: dummyUserLite.copyWith(id: 'testuser', username: 'testuser'),
          renoteId: renote.id,
          renote: renote,
        );
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
            noteNotifierProvider(account, renote.id).overrideWithValue(renote),
          ],
        );
        await tester.tap(find.byType(UserAvatar).last);
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(
          find.textContaining('/@testuser@misskey.tld/users/testuser'),
          findsOne,
        );
      });
    });

    group('note', () {
      testWidgets('should not show an user avatar if disabled', (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(
          id: 'test',
          text: 'text',
          userId: 'testuser',
          user: dummyUserLite.copyWith(id: 'testuser'),
        );
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          generalSettings: const GeneralSettings(showAvatarsInNote: false),
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        expect(find.byType(UserAvatar), findsNothing);
      });

      testWidgets('should show an user avatar', (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(
          id: 'test',
          text: 'text',
          userId: 'testuser',
          user: dummyUserLite.copyWith(id: 'testuser'),
        );
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        await tester.pumpAndSettle();
        await tester.tap(find.byType(UserAvatar));
        await tester.pump(kDoubleTapTimeout);
        await tester.pumpAndSettle();
        expect(find.textContaining('/misskey.tld/users/testuser'), findsOne);
      });
    });
  });

  group('instance ticker', () {
    testWidgets('should not show an instance ticker if the setting is none', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        user: dummyUserLite.copyWith(
          host: 'misskey2.tld',
          instance: const UserInstanceInfo(),
        ),
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        generalSettings: const GeneralSettings(
          instanceTicker: InstanceTicker.none,
        ),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(find.byType(InstanceTickerWidget), findsNothing);
    });

    testWidgets(
      'should not show an instance ticker for a local note if the setting is remote',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', user: dummyUserLite);
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        expect(find.byType(InstanceTickerWidget), findsNothing);
      },
    );

    testWidgets(
      'should show an instance ticker for a remote note if the setting is remote',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(
          id: 'test',
          user: dummyUserLite.copyWith(
            host: 'misskey2.tld',
            instance: const UserInstanceInfo(),
          ),
        );
        await setupWidget(
          tester,
          account: account,
          noteId: note.id,
          overrides: [
            noteNotifierProvider(account, note.id).overrideWithValue(note),
          ],
        );
        expect(find.byType(InstanceTickerWidget), findsOne);
      },
    );

    testWidgets('should not show an instance ticker if the setting is always', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', user: dummyUserLite);
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        generalSettings: const GeneralSettings(
          instanceTicker: InstanceTicker.always,
        ),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(find.byType(InstanceTickerWidget), findsOne);
    });
  });

  group('CW', () {
    testWidgets('should show contents warning', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        cw: 'cw text',
        text: 'note text',
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      await tester.pumpAndSettle();
      expect(find.text('cw text'), findsOne);
      expect(find.textContaining(t.misskey.cw_.show), findsOne);
      expect(find.textContaining(t.misskey.cw_.hide), findsNothing);
      expect(find.text('note text'), findsNothing);
      await tester.tap(find.textContaining(t.misskey.cw_.show));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.text('cw text'), findsOne);
      expect(find.textContaining(t.misskey.cw_.show), findsNothing);
      expect(find.textContaining(t.misskey.cw_.hide), findsOne);
      expect(find.text('note text'), findsOne);
      await tester.tap(find.textContaining(t.misskey.cw_.hide));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.text('cw text'), findsOne);
      expect(find.textContaining(t.misskey.cw_.show), findsOne);
      expect(find.textContaining(t.misskey.cw_.hide), findsNothing);
      expect(find.text('note text'), findsNothing);
    });
  });

  group('long', () {
    testWidgets('should not collapse a long note if cw', (tester) async {
      await tester.binding.setSurfaceSize(const Size(800.0, 2000.0));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      const account = Account(host: 'misskey.tld');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        cw: 'cw text',
        text: 'note text${'\n' * 11}https://example.com',
        files: [dummyDriveFile],
        renoteId: renote.id,
        renote: renote,
        poll: const NotePoll(multiple: false, choices: []),
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      await tester.pumpAndSettle();
      expect(find.byType(MediaList), findsNothing);
      expect(find.byType(PollWidget), findsNothing);
      expect(find.byType(UrlPreview), findsNothing);
      expect(find.byType(NoteSimpleWidget), findsNothing);
      expect(find.text(t.misskey.showMore), findsNothing);
      expect(find.text(t.misskey.showLess), findsNothing);
      await tester.tap(find.textContaining(t.misskey.cw_.show));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.byType(MediaList), findsOne);
      expect(find.byType(PollWidget), findsOne);
      expect(find.byType(UrlPreview), findsOne);
      expect(find.byType(NoteSimpleWidget), findsOne);
      expect(find.text(t.misskey.showMore), findsNothing);
      expect(find.text(t.misskey.showLess), findsNothing);
      await tester.tap(find.textContaining(t.misskey.cw_.hide));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.byType(MediaList), findsNothing);
      expect(find.byType(PollWidget), findsNothing);
      expect(find.byType(UrlPreview), findsNothing);
      expect(find.byType(NoteSimpleWidget), findsNothing);
      expect(find.text(t.misskey.showMore), findsNothing);
      expect(find.text(t.misskey.showLess), findsNothing);
    });

    testWidgets('should collapse a long note', (tester) async {
      await tester.binding.setSurfaceSize(const Size(800.0, 2000.0));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      const account = Account(host: 'misskey.tld');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'note text${'\n' * 11}https://example.com',
        files: [dummyDriveFile],
        renoteId: renote.id,
        renote: renote,
        poll: const NotePoll(multiple: false, choices: []),
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      await tester.pumpAndSettle();
      expect(find.byType(MediaList), findsNothing);
      expect(find.byType(PollWidget), findsNothing);
      expect(find.byType(UrlPreview), findsNothing);
      expect(find.byType(NoteSimpleWidget), findsNothing);
      expect(find.text(t.misskey.showMore), findsOne);
      expect(find.text(t.misskey.showLess), findsNothing);
      await tester.tap(find.text(t.misskey.showMore));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.byType(MediaList), findsOne);
      expect(find.byType(PollWidget), findsOne);
      expect(find.byType(UrlPreview), findsOne);
      expect(find.byType(NoteSimpleWidget), findsOne);
      expect(find.text(t.misskey.showMore), findsNothing);
      expect(find.text(t.misskey.showLess), findsOne);
      await tester.tap(find.text(t.misskey.showLess));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(find.byType(MediaList), findsNothing);
      expect(find.byType(PollWidget), findsNothing);
      expect(find.byType(UrlPreview), findsNothing);
      expect(find.byType(NoteSimpleWidget), findsNothing);
      expect(find.text(t.misskey.showMore), findsOne);
      expect(find.text(t.misskey.showLess), findsNothing);
    });
  });

  group('channel', () {
    testWidgets('should show a channel', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        channel: const NoteChannelInfo(id: 'testchannel', name: 'channel name'),
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.tv), findsExactly(2));
      expect(find.textContaining('channel name'), findsOne);
      await tester.tap(find.textContaining('channel name'));
      await tester.pump(kDoubleTapTimeout);
      await tester.pumpAndSettle();
      expect(
        find.textContaining('/misskey.tld/channels/testchannel'),
        findsOne,
      );
    });
  });

  group('reactions', () {
    testWidgets('should not show a reactions viewer if like only', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        reactions: {'❤': 1},
        reactionAcceptance: ReactionAcceptance.likeOnly,
      );
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      await tester.pumpAndSettle();
      expect(find.byType(ReactionsViewer), findsNothing);
    });

    testWidgets('should not show a reactions viewer if disabled', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', reactions: {'❤': 1});
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        generalSettings: const GeneralSettings(showNoteReactionsViewer: false),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(find.byType(ReactionsViewer), findsNothing);
    });

    testWidgets('should not show a reactions viewer if no reactions', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      await tester.pumpAndSettle();
      expect(find.byType(ReactionsViewer), findsNothing);
    });

    testWidgets('should show a reactions viewer', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', reactions: {'❤': 1});
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      await tester.pumpAndSettle();
      expect(find.byType(ReactionsViewer), findsOne);
    });
  });

  group('footer', () {
    testWidgets('should not show a footer if disabled', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        generalSettings: const GeneralSettings(showNoteFooter: false),
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(find.byType(NoteFooter), findsNothing);
    });

    testWidgets('should not show a footer if force disabled', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        showFooter: false,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      expect(find.byType(NoteFooter), findsNothing);
    });

    testWidgets('should show a footer', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        overrides: [
          noteNotifierProvider(account, note.id).overrideWithValue(note),
        ],
      );
      await tester.pumpAndSettle();
      expect(find.byType(NoteFooter), findsOne);
    });
  });
}
