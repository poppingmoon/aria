// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_center_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineCenterNotifier)
const timelineCenterNotifierProvider = TimelineCenterNotifierFamily._();

final class TimelineCenterNotifierProvider
    extends $NotifierProvider<TimelineCenterNotifier, String?> {
  const TimelineCenterNotifierProvider._({
    required TimelineCenterNotifierFamily super.from,
    required TabSettings super.argument,
  }) : super(
         retry: null,
         name: r'timelineCenterNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$timelineCenterNotifierHash();

  @override
  String toString() {
    return r'timelineCenterNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TimelineCenterNotifier create() => TimelineCenterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineCenterNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$timelineCenterNotifierHash() =>
    r'8591d2acf197213bf5abdefe739f1abf3f449d22';

final class TimelineCenterNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TimelineCenterNotifier,
          String?,
          String?,
          String?,
          TabSettings
        > {
  const TimelineCenterNotifierFamily._()
    : super(
        retry: null,
        name: r'timelineCenterNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TimelineCenterNotifierProvider call(TabSettings tabSettings) =>
      TimelineCenterNotifierProvider._(argument: tabSettings, from: this);

  @override
  String toString() => r'timelineCenterNotifierProvider';
}

abstract class _$TimelineCenterNotifier extends $Notifier<String?> {
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
