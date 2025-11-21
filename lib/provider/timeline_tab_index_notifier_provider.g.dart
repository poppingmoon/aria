// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_tab_index_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TimelineTabIndexNotifier)
const timelineTabIndexNotifierProvider = TimelineTabIndexNotifierProvider._();

final class TimelineTabIndexNotifierProvider
    extends $NotifierProvider<TimelineTabIndexNotifier, int> {
  const TimelineTabIndexNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'timelineTabIndexNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$timelineTabIndexNotifierHash();

  @$internal
  @override
  TimelineTabIndexNotifier create() => TimelineTabIndexNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$timelineTabIndexNotifierHash() =>
    r'1e1beb3b4ea3b037c6a4a3e7772e958a5e6f7dfa';

abstract class _$TimelineTabIndexNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
