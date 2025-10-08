// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_last_viewed_at_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(timelineLastViewedAt)
const timelineLastViewedAtProvider = TimelineLastViewedAtFamily._();

final class TimelineLastViewedAtProvider
    extends $FunctionalProvider<DateTime?, DateTime?, DateTime?>
    with $Provider<DateTime?> {
  const TimelineLastViewedAtProvider._({
    required TimelineLastViewedAtFamily super.from,
    required TabSettings super.argument,
  }) : super(
         retry: null,
         name: r'timelineLastViewedAtProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineLastViewedAtHash();

  @override
  String toString() {
    return r'timelineLastViewedAtProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<DateTime?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DateTime? create(Ref ref) {
    final argument = this.argument as TabSettings;
    return timelineLastViewedAt(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineLastViewedAtProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineLastViewedAtHash() =>
    r'be8976a7ee6821b3ae63b998a9690bf7cb827f6c';

final class TimelineLastViewedAtFamily extends $Family
    with $FunctionalFamilyOverride<DateTime?, TabSettings> {
  const TimelineLastViewedAtFamily._()
    : super(
        retry: null,
        name: r'timelineLastViewedAtProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineLastViewedAtProvider call(TabSettings tabSettings) =>
      TimelineLastViewedAtProvider._(argument: tabSettings, from: this);

  @override
  String toString() => r'timelineLastViewedAtProvider';
}
