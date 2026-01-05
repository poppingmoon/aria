// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_instance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(federationInstance)
final federationInstanceProvider = FederationInstanceFamily._();

final class FederationInstanceProvider
    extends
        $FunctionalProvider<
          AsyncValue<FederationShowInstanceResponse>,
          FederationShowInstanceResponse,
          FutureOr<FederationShowInstanceResponse>
        >
    with
        $FutureModifier<FederationShowInstanceResponse>,
        $FutureProvider<FederationShowInstanceResponse> {
  FederationInstanceProvider._({
    required FederationInstanceFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'federationInstanceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$federationInstanceHash();

  @override
  String toString() {
    return r'federationInstanceProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<FederationShowInstanceResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FederationShowInstanceResponse> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return federationInstance(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is FederationInstanceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$federationInstanceHash() =>
    r'7d839c4af8d32812bd8e80fedd7af3cffe4d0c82';

final class FederationInstanceFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<FederationShowInstanceResponse>,
          (Account, String)
        > {
  FederationInstanceFamily._()
    : super(
        retry: null,
        name: r'federationInstanceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FederationInstanceProvider call(Account account, String host) =>
      FederationInstanceProvider._(argument: (account, host), from: this);

  @override
  String toString() => r'federationInstanceProvider';
}
