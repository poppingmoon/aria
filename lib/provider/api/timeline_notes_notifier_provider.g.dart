// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineNotesNotifier)
const timelineNotesNotifierProvider = TimelineNotesNotifierFamily._();

final class TimelineNotesNotifierProvider
    extends
        $StreamNotifierProvider<TimelineNotesNotifier, PaginationState<Note>> {
  const TimelineNotesNotifierProvider._({
    required TimelineNotesNotifierFamily super.from,
    required (TabSettings, {String? untilId}) super.argument,
  }) : super(
         retry: null,
         name: r'timelineNotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineNotesNotifierHash();

  @override
  String toString() {
    return r'timelineNotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  TimelineNotesNotifier create() => TimelineNotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is TimelineNotesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineNotesNotifierHash() =>
    r'70ccc7d6369e88711deb22ea5860a6435ad057f7';

final class TimelineNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TimelineNotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (TabSettings, {String? untilId})
        > {
  const TimelineNotesNotifierFamily._()
    : super(
        retry: null,
        name: r'timelineNotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineNotesNotifierProvider call(
    TabSettings tabSettings, {
    String? untilId,
  }) => TimelineNotesNotifierProvider._(
    argument: (tabSettings, untilId: untilId),
    from: this,
  );

  @override
  String toString() => r'timelineNotesNotifierProvider';
}

abstract class _$TimelineNotesNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (TabSettings, {String? untilId});
  TabSettings get tabSettings => _$args.$1;
  String? get untilId => _$args.untilId;

  Stream<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? untilId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, untilId: _$args.untilId);
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
