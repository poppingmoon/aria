// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_notes_queue_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineNotesQueueNotifier)
final timelineNotesQueueNotifierProvider = TimelineNotesQueueNotifierFamily._();

final class TimelineNotesQueueNotifierProvider
    extends $NotifierProvider<TimelineNotesQueueNotifier, List<Note>> {
  TimelineNotesQueueNotifierProvider._({
    required TimelineNotesQueueNotifierFamily super.from,
    required TabSettings super.argument,
  }) : super(
         retry: null,
         name: r'timelineNotesQueueNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineNotesQueueNotifierHash();

  @override
  String toString() {
    return r'timelineNotesQueueNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TimelineNotesQueueNotifier create() => TimelineNotesQueueNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Note> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Note>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineNotesQueueNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineNotesQueueNotifierHash() =>
    r'e1060df19d22019ab0b6a1e4f9ff180a3bbbd8ca';

final class TimelineNotesQueueNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TimelineNotesQueueNotifier,
          List<Note>,
          List<Note>,
          List<Note>,
          TabSettings
        > {
  TimelineNotesQueueNotifierFamily._()
    : super(
        retry: null,
        name: r'timelineNotesQueueNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineNotesQueueNotifierProvider call(TabSettings tabSettings) =>
      TimelineNotesQueueNotifierProvider._(argument: tabSettings, from: this);

  @override
  String toString() => r'timelineNotesQueueNotifierProvider';
}

abstract class _$TimelineNotesQueueNotifier extends $Notifier<List<Note>> {
  late final _$args = ref.$arg as TabSettings;
  TabSettings get tabSettings => _$args;

  List<Note> build(TabSettings tabSettings);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<Note>, List<Note>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Note>, List<Note>>,
              List<Note>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
