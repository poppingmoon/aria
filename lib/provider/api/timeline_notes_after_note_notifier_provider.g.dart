// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_notes_after_note_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineNotesAfterNoteNotifier)
const timelineNotesAfterNoteNotifierProvider =
    TimelineNotesAfterNoteNotifierFamily._();

final class TimelineNotesAfterNoteNotifierProvider
    extends
        $StreamNotifierProvider<
          TimelineNotesAfterNoteNotifier,
          PaginationState<Note>
        > {
  const TimelineNotesAfterNoteNotifierProvider._({
    required TimelineNotesAfterNoteNotifierFamily super.from,
    required (TabSettings, {String? sinceId}) super.argument,
  }) : super(
         retry: null,
         name: r'timelineNotesAfterNoteNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineNotesAfterNoteNotifierHash();

  @override
  String toString() {
    return r'timelineNotesAfterNoteNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  TimelineNotesAfterNoteNotifier create() => TimelineNotesAfterNoteNotifier();

  @override
  bool operator ==(Object other) {
    return other is TimelineNotesAfterNoteNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineNotesAfterNoteNotifierHash() =>
    r'16dd4e1c84852827637320bd02f67a138603f46d';

final class TimelineNotesAfterNoteNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TimelineNotesAfterNoteNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (TabSettings, {String? sinceId})
        > {
  const TimelineNotesAfterNoteNotifierFamily._()
    : super(
        retry: null,
        name: r'timelineNotesAfterNoteNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineNotesAfterNoteNotifierProvider call(
    TabSettings tabSettings, {
    String? sinceId,
  }) => TimelineNotesAfterNoteNotifierProvider._(
    argument: (tabSettings, sinceId: sinceId),
    from: this,
  );

  @override
  String toString() => r'timelineNotesAfterNoteNotifierProvider';
}

abstract class _$TimelineNotesAfterNoteNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (TabSettings, {String? sinceId});
  TabSettings get tabSettings => _$args.$1;
  String? get sinceId => _$args.sinceId;

  Stream<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? sinceId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, sinceId: _$args.sinceId);
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Note>>, PaginationState<Note>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Note>>,
                PaginationState<Note>
              >,
              AsyncValue<PaginationState<Note>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
