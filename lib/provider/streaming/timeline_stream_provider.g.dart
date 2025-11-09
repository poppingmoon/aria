// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_stream_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_timelineStreamConnection)
const _timelineStreamConnectionProvider = _TimelineStreamConnectionFamily._();

final class _TimelineStreamConnectionProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const _TimelineStreamConnectionProvider._({
    required _TimelineStreamConnectionFamily super.from,
    required TabSettings super.argument,
  }) : super(
         retry: null,
         name: r'_timelineStreamConnectionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$_timelineStreamConnectionHash();

  @override
  String toString() {
    return r'_timelineStreamConnectionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as TabSettings;
    return _timelineStreamConnection(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is _TimelineStreamConnectionProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$_timelineStreamConnectionHash() =>
    r'383fff4ff91992527feb664ad94b98c29d77a298';

final class _TimelineStreamConnectionFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, TabSettings> {
  const _TimelineStreamConnectionFamily._()
    : super(
        retry: null,
        name: r'_timelineStreamConnectionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  _TimelineStreamConnectionProvider call(TabSettings tabSettings) =>
      _TimelineStreamConnectionProvider._(argument: tabSettings, from: this);

  @override
  String toString() => r'_timelineStreamConnectionProvider';
}

@ProviderFor(timelineStream)
const timelineStreamProvider = TimelineStreamFamily._();

final class TimelineStreamProvider
    extends $FunctionalProvider<AsyncValue<Note>, Note, Stream<Note>>
    with $FutureModifier<Note>, $StreamProvider<Note> {
  const TimelineStreamProvider._({
    required TimelineStreamFamily super.from,
    required TabSettings super.argument,
  }) : super(
         retry: null,
         name: r'timelineStreamProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineStreamHash();

  @override
  String toString() {
    return r'timelineStreamProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Note> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Note> create(Ref ref) {
    final argument = this.argument as TabSettings;
    return timelineStream(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineStreamProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineStreamHash() => r'8b3f89aec58a9ff14db5cedf4de8bfe604678d3f';

final class TimelineStreamFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Note>, TabSettings> {
  const TimelineStreamFamily._()
    : super(
        retry: null,
        name: r'timelineStreamProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineStreamProvider call(TabSettings tabSettings) =>
      TimelineStreamProvider._(argument: tabSettings, from: this);

  @override
  String toString() => r'timelineStreamProvider';
}
