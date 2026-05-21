// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_tabs_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineTabsNotifier)
final timelineTabsNotifierProvider = TimelineTabsNotifierProvider._();

final class TimelineTabsNotifierProvider
    extends $NotifierProvider<TimelineTabsNotifier, List<TabSettings>> {
  TimelineTabsNotifierProvider._()
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
    r'b7e18094a4e9dcef68ab339f1495ab2b724fa97b';

abstract class _$TimelineTabsNotifier extends $Notifier<List<TabSettings>> {
  List<TabSettings> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<TabSettings>, List<TabSettings>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<TabSettings>, List<TabSettings>>,
              List<TabSettings>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
