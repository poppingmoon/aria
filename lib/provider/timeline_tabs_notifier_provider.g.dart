// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_tabs_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineTabsNotifier)
const timelineTabsNotifierProvider = TimelineTabsNotifierProvider._();

final class TimelineTabsNotifierProvider
    extends $NotifierProvider<TimelineTabsNotifier, List<TabSettings>> {
  const TimelineTabsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'timelineTabsNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$timelineTabsNotifierHash();

  @$internal
  @override
  TimelineTabsNotifier create() => TimelineTabsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TabSettings> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TabSettings>>(value),
    );
  }
}

String _$timelineTabsNotifierHash() =>
    r'd7b4a0253af678c8ca25935227503f2e920cfe75';

abstract class _$TimelineTabsNotifier extends $Notifier<List<TabSettings>> {
  List<TabSettings> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<TabSettings>, List<TabSettings>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<TabSettings>, List<TabSettings>>,
              List<TabSettings>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
