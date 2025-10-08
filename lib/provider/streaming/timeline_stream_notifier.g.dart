// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_stream_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineStreamNotifier)
const timelineStreamNotifierProvider = TimelineStreamNotifierFamily._();

final class TimelineStreamNotifierProvider
    extends $StreamNotifierProvider<TimelineStreamNotifier, Note> {
  const TimelineStreamNotifierProvider._({
    required TimelineStreamNotifierFamily super.from,
    required TabSettings super.argument,
  }) : super(
         retry: null,
         name: r'timelineStreamNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineStreamNotifierHash();

  @override
  String toString() {
    return r'timelineStreamNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TimelineStreamNotifier create() => TimelineStreamNotifier();

  @override
  bool operator ==(Object other) {
    return other is TimelineStreamNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineStreamNotifierHash() =>
    r'e9ec2db45571953895bdeab66cb099a932e0833e';

final class TimelineStreamNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TimelineStreamNotifier,
          AsyncValue<Note>,
          Note,
          Stream<Note>,
          TabSettings
        > {
  const TimelineStreamNotifierFamily._()
    : super(
        retry: null,
        name: r'timelineStreamNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineStreamNotifierProvider call(TabSettings tabSettings) =>
      TimelineStreamNotifierProvider._(argument: tabSettings, from: this);

  @override
  String toString() => r'timelineStreamNotifierProvider';
}

abstract class _$TimelineStreamNotifier extends $StreamNotifier<Note> {
  late final _$args = ref.$arg as TabSettings;
  TabSettings get tabSettings => _$args;

  Stream<Note> build(TabSettings tabSettings);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<Note>, Note>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Note>, Note>,
              AsyncValue<Note>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
