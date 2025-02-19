import 'package:aria/model/id.dart';
import 'package:aria/model/tab_settings.dart';
import 'package:aria/view/widget/timeline_list_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../test_util/dummy_note.dart';

Note createDummyNote(int day, [int hour = 0]) {
  return dummyNote.copyWith(
    id:
        Id(
          method: IdGenMethod.aidx,
          date: DateTime(2025, 1, day, hour),
        ).toString(),
  );
}

List<Note> createDummyNotes(int end, int start) {
  return List.generate(end - start, (i) => createDummyNote(end - i));
}

void main() {
  group('getNewNoteDividerIndex', () {
    group(
      'should return null if the last viewed note is newer than the latest note',
      () {
        test('both', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(21).id,
            nextNotes: createDummyNotes(20, 10),
            previousNotes: createDummyNotes(10, 0),
          );
          expect(result, isNull);
        });

        test('next', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(21).id,
            nextNotes: createDummyNotes(20, 10),
          );
          expect(result, isNull);
        });

        test('previous', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(11).id,
            previousNotes: createDummyNotes(10, 0),
          );
          expect(result, isNull);
        });

        test('none', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(1).id,
          );
          expect(result, isNull);
        });
      },
    );

    group(
      'should return null if the last viewed note is the same as the latest note',
      () {
        test('both', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(20).id,
            nextNotes: createDummyNotes(20, 10),
            previousNotes: createDummyNotes(10, 0),
          );
          expect(result, isNull);
        });

        test('next', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(20).id,
            nextNotes: createDummyNotes(20, 10),
          );
          expect(result, isNull);
        });

        test('previous', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(10).id,
            previousNotes: createDummyNotes(10, 0),
          );
          expect(result, isNull);
        });
      },
    );

    group(
      'should return index if the last viewed note is older than the latest note and newer than the oldest note',
      () {
        group('both', () {
          test(1, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(19).id,
              nextNotes: createDummyNotes(20, 10),
              previousNotes: createDummyNotes(10, 0),
            );
            expect(result, 9);
          });

          test(2, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(10, 1).id,
              nextNotes: createDummyNotes(20, 10),
              previousNotes: createDummyNotes(10, 0),
            );
            expect(result, 0);
          });

          test(3, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(10).id,
              nextNotes: createDummyNotes(20, 10),
              previousNotes: createDummyNotes(10, 0),
            );
            expect(result, 0);
          });

          test(4, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(9).id,
              nextNotes: createDummyNotes(20, 10),
              previousNotes: createDummyNotes(10, 0),
            );
            expect(result, -1);
          });
        });

        group('next', () {
          test(1, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(19, 1).id,
              nextNotes: createDummyNotes(20, 10),
            );
            expect(result, 9);
          });

          test(2, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(19).id,
              nextNotes: createDummyNotes(20, 10),
            );
            expect(result, 9);
          });

          test(3, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(11, 1).id,
              nextNotes: createDummyNotes(20, 10),
            );
            expect(result, 1);
          });

          test(4, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(11).id,
              nextNotes: createDummyNotes(20, 10),
            );
            expect(result, 1);
          });
        });

        group('previous', () {
          test(1, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(9, 1).id,
              previousNotes: createDummyNotes(10, 0),
            );
            expect(result, -1);
          });

          test(2, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(9).id,
              previousNotes: createDummyNotes(10, 0),
            );
            expect(result, -1);
          });

          test(3, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(1, 1).id,
              previousNotes: createDummyNotes(10, 0),
            );
            expect(result, -9);
          });

          test(4, () {
            final widget = TimelineListView(tabSettings: TabSettings.dummy());
            final result = widget.getNewNoteDividerIndex(
              lastViewedNoteId: createDummyNote(1).id,
              previousNotes: createDummyNotes(10, 0),
            );
            expect(result, -9);
          });
        });
      },
    );

    group(
      'should return null if the last viewed note is newer than the latest note',
      () {
        test('both', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(0).id,
            nextNotes: createDummyNotes(20, 10),
            previousNotes: createDummyNotes(10, 0),
          );
          expect(result, isNull);
        });

        test('next', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(10).id,
            nextNotes: createDummyNotes(20, 10),
          );
          expect(result, isNull);
        });

        test('previous', () {
          final widget = TimelineListView(tabSettings: TabSettings.dummy());
          final result = widget.getNewNoteDividerIndex(
            lastViewedNoteId: createDummyNote(0).id,
            previousNotes: createDummyNotes(10, 0),
          );
          expect(result, isNull);
        });
      },
    );
  });
}
