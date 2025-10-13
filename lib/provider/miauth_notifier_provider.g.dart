// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miauth_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MiAuthNotifier)
const miAuthNotifierProvider = MiAuthNotifierProvider._();

final class MiAuthNotifierProvider
    extends $NotifierProvider<MiAuthNotifier, MiAuthState?> {
  const MiAuthNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'miAuthNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$miAuthNotifierHash();

  @$internal
  @override
  MiAuthNotifier create() => MiAuthNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MiAuthState? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MiAuthState?>(value),
    );
  }
}

String _$miAuthNotifierHash() => r'1d31c393d6b9dc031cb25772e2b9600c82089f10';

abstract class _$MiAuthNotifier extends $Notifier<MiAuthState?> {
  MiAuthState? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MiAuthState?, MiAuthState?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MiAuthState?, MiAuthState?>,
              MiAuthState?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
