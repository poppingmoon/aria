// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boot_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BootState)
const bootStateProvider = BootStateProvider._();

final class BootStateProvider extends $AsyncNotifierProvider<BootState, bool?> {
  const BootStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bootStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bootStateHash();

  @$internal
  @override
  BootState create() => BootState();
}

String _$bootStateHash() => r'19d3fd126c79299a3de35ee77f99f1fd7943e5bf';

abstract class _$BootState extends $AsyncNotifier<bool?> {
  FutureOr<bool?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool?>, bool?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool?>, bool?>,
              AsyncValue<bool?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
