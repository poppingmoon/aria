// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_instance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$federationInstanceHash() =>
    r'8b45989b1b0571577a5ace9829b4313e0dccba5b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [federationInstance].
@ProviderFor(federationInstance)
const federationInstanceProvider = FederationInstanceFamily();

/// See also [federationInstance].
class FederationInstanceFamily
    extends Family<AsyncValue<FederationShowInstanceResponse>> {
  /// See also [federationInstance].
  const FederationInstanceFamily();

  /// See also [federationInstance].
  FederationInstanceProvider call(
    Account account,
    String host,
  ) {
    return FederationInstanceProvider(
      account,
      host,
    );
  }

  @override
  FederationInstanceProvider getProviderOverride(
    covariant FederationInstanceProvider provider,
  ) {
    return call(
      provider.account,
      provider.host,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'federationInstanceProvider';
}

/// See also [federationInstance].
class FederationInstanceProvider
    extends AutoDisposeFutureProvider<FederationShowInstanceResponse> {
  /// See also [federationInstance].
  FederationInstanceProvider(
    Account account,
    String host,
  ) : this._internal(
          (ref) => federationInstance(
            ref as FederationInstanceRef,
            account,
            host,
          ),
          from: federationInstanceProvider,
          name: r'federationInstanceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$federationInstanceHash,
          dependencies: FederationInstanceFamily._dependencies,
          allTransitiveDependencies:
              FederationInstanceFamily._allTransitiveDependencies,
          account: account,
          host: host,
        );

  FederationInstanceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.host,
  }) : super.internal();

  final Account account;
  final String host;

  @override
  Override overrideWith(
    FutureOr<FederationShowInstanceResponse> Function(
            FederationInstanceRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FederationInstanceProvider._internal(
        (ref) => create(ref as FederationInstanceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        host: host,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FederationShowInstanceResponse>
      createElement() {
    return _FederationInstanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FederationInstanceProvider &&
        other.account == account &&
        other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FederationInstanceRef
    on AutoDisposeFutureProviderRef<FederationShowInstanceResponse> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `host` of this provider.
  String get host;
}

class _FederationInstanceProviderElement
    extends AutoDisposeFutureProviderElement<FederationShowInstanceResponse>
    with FederationInstanceRef {
  _FederationInstanceProviderElement(super.provider);

  @override
  Account get account => (origin as FederationInstanceProvider).account;
  @override
  String get host => (origin as FederationInstanceProvider).host;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
