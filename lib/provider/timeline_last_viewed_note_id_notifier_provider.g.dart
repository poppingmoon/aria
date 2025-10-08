// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_last_viewed_note_id_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineLastViewedNoteIdNotifier)
const timelineLastViewedNoteIdNotifierProvider =
    TimelineLastViewedNoteIdNotifierFamily._();

final class TimelineLastViewedNoteIdNotifierProvider
    extends $NotifierProvider<TimelineLastViewedNoteIdNotifier, String?> {
  const TimelineLastViewedNoteIdNotifierProvider._({
    required TimelineLastViewedNoteIdNotifierFamily super.from,
    required TabSettings super.argument,
  }) : super(
         retry: null,
         name: r'timelineLastViewedNoteIdNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineLastViewedNoteIdNotifierHash();

  @override
  String toString() {
    return r'timelineLastViewedNoteIdNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TimelineLastViewedNoteIdNotifier create() =>
      TimelineLastViewedNoteIdNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineLastViewedNoteIdNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineLastViewedNoteIdNotifierHash() =>
    r'74d17ffe8a3f5f248d74c04815dc7d497a0b4630';

final class TimelineLastViewedNoteIdNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TimelineLastViewedNoteIdNotifier,
          String?,
          String?,
          String?,
          TabSettings
        > {
  const TimelineLastViewedNoteIdNotifierFamily._()
    : super(
        retry: null,
        name: r'timelineLastViewedNoteIdNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineLastViewedNoteIdNotifierProvider call(TabSettings tabSettings) =>
      TimelineLastViewedNoteIdNotifierProvider._(
        argument: tabSettings,
        from: this,
      );

  @override
  String toString() => r'timelineLastViewedNoteIdNotifierProvider';
}

abstract class _$TimelineLastViewedNoteIdNotifier extends $Notifier<String?> {
  late final _$args = ref.$arg as TabSettings;
  TabSettings get tabSettings => _$args;

  String? build(TabSettings tabSettings);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
