// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apns_push_connector_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(apnsPushConnector)
final apnsPushConnectorProvider = ApnsPushConnectorProvider._();

final class ApnsPushConnectorProvider
    extends
        $FunctionalProvider<
          ApnsPushConnectorOnly,
          ApnsPushConnectorOnly,
          ApnsPushConnectorOnly
        >
    with $Provider<ApnsPushConnectorOnly> {
  ApnsPushConnectorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apnsPushConnectorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apnsPushConnectorHash();

  @$internal
  @override
  $ProviderElement<ApnsPushConnectorOnly> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ApnsPushConnectorOnly create(Ref ref) {
    return apnsPushConnector(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApnsPushConnectorOnly value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApnsPushConnectorOnly>(value),
    );
  }
}

String _$apnsPushConnectorHash() => r'045174b8a22cf4f125e76bc9707c0b7eaeb53ce3';
