// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_scroll_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(timelineScrollController)
const timelineScrollControllerProvider = TimelineScrollControllerFamily._();

final class TimelineScrollControllerProvider
    extends
        $FunctionalProvider<
          Raw<ScrollController>,
          Raw<ScrollController>,
          Raw<ScrollController>
        >
    with $Provider<Raw<ScrollController>> {
  const TimelineScrollControllerProvider._({
    required TimelineScrollControllerFamily super.from,
    required TabSettings super.argument,
  }) : super(
         retry: null,
         name: r'timelineScrollControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineScrollControllerHash();

  @override
  String toString() {
    return r'timelineScrollControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Raw<ScrollController>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Raw<ScrollController> create(Ref ref) {
    final argument = this.argument as TabSettings;
    return timelineScrollController(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Raw<ScrollController> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Raw<ScrollController>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineScrollControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineScrollControllerHash() =>
    r'fe1f323afac7d86b41998b7f4ef17d90b61cb29b';

final class TimelineScrollControllerFamily extends $Family
    with $FunctionalFamilyOverride<Raw<ScrollController>, TabSettings> {
  const TimelineScrollControllerFamily._()
    : super(
        retry: null,
        name: r'timelineScrollControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineScrollControllerProvider call(TabSettings tabSettings) =>
      TimelineScrollControllerProvider._(argument: tabSettings, from: this);

  @override
  String toString() => r'timelineScrollControllerProvider';
}
