// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unified_push_endpoint_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UnifiedPushEndpointNotifier)
final unifiedPushEndpointNotifierProvider =
    UnifiedPushEndpointNotifierFamily._();

final class UnifiedPushEndpointNotifierProvider
    extends $NotifierProvider<UnifiedPushEndpointNotifier, PushEndpoint?> {
  UnifiedPushEndpointNotifierProvider._({
    required UnifiedPushEndpointNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unifiedPushEndpointNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unifiedPushEndpointNotifierHash();

  @override
  String toString() {
    return r'unifiedPushEndpointNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UnifiedPushEndpointNotifier create() => UnifiedPushEndpointNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PushEndpoint? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PushEndpoint?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UnifiedPushEndpointNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unifiedPushEndpointNotifierHash() =>
    r'4d2342848f3cba07157455b2567deb5afa5a81d1';

final class UnifiedPushEndpointNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UnifiedPushEndpointNotifier,
          PushEndpoint?,
          PushEndpoint?,
          PushEndpoint?,
          String
        > {
  UnifiedPushEndpointNotifierFamily._()
    : super(
        retry: null,
        name: r'unifiedPushEndpointNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  UnifiedPushEndpointNotifierProvider call(String instance) =>
      UnifiedPushEndpointNotifierProvider._(argument: instance, from: this);

  @override
  String toString() => r'unifiedPushEndpointNotifierProvider';
}

abstract class _$UnifiedPushEndpointNotifier extends $Notifier<PushEndpoint?> {
  late final _$args = ref.$arg as String;
  String get instance => _$args;

  PushEndpoint? build(String instance);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PushEndpoint?, PushEndpoint?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PushEndpoint?, PushEndpoint?>,
              PushEndpoint?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
