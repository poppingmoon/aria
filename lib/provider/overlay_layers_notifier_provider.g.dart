// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overlay_layers_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OverlayLayersNotifier)
final overlayLayersNotifierProvider = OverlayLayersNotifierProvider._();

final class OverlayLayersNotifierProvider
    extends $NotifierProvider<OverlayLayersNotifier, List<Layer>> {
  OverlayLayersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'overlayLayersNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$overlayLayersNotifierHash();

  @$internal
  @override
  OverlayLayersNotifier create() => OverlayLayersNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Layer> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Layer>>(value),
    );
  }
}

String _$overlayLayersNotifierHash() =>
    r'578deffd986dd4c8a74a68d4da3f3020da90be08';

abstract class _$OverlayLayersNotifier extends $Notifier<List<Layer>> {
  List<Layer> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<Layer>, List<Layer>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Layer>, List<Layer>>,
              List<Layer>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
