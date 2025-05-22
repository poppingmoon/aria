// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_parameters_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$endpointParametersHash() =>
    r'a0e3831220a6cc5982100c7c1d6213feacfc5815';

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

/// See also [endpointParameters].
@ProviderFor(endpointParameters)
const endpointParametersProvider = EndpointParametersFamily();

/// See also [endpointParameters].
class EndpointParametersFamily
    extends Family<AsyncValue<List<EndpointParameter>>> {
  /// See also [endpointParameters].
  const EndpointParametersFamily();

  /// See also [endpointParameters].
  EndpointParametersProvider call(Account account, String endpoint) {
    return EndpointParametersProvider(account, endpoint);
  }

  @override
  EndpointParametersProvider getProviderOverride(
    covariant EndpointParametersProvider provider,
  ) {
    return call(provider.account, provider.endpoint);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'endpointParametersProvider';
}

/// See also [endpointParameters].
class EndpointParametersProvider
    extends AutoDisposeFutureProvider<List<EndpointParameter>> {
  /// See also [endpointParameters].
  EndpointParametersProvider(Account account, String endpoint)
    : this._internal(
        (ref) =>
            endpointParameters(ref as EndpointParametersRef, account, endpoint),
        from: endpointParametersProvider,
        name: r'endpointParametersProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$endpointParametersHash,
        dependencies: EndpointParametersFamily._dependencies,
        allTransitiveDependencies:
            EndpointParametersFamily._allTransitiveDependencies,
        account: account,
        endpoint: endpoint,
      );

  EndpointParametersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.endpoint,
  }) : super.internal();

  final Account account;
  final String endpoint;

  @override
  Override overrideWith(
    FutureOr<List<EndpointParameter>> Function(EndpointParametersRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EndpointParametersProvider._internal(
        (ref) => create(ref as EndpointParametersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        endpoint: endpoint,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<EndpointParameter>> createElement() {
    return _EndpointParametersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EndpointParametersProvider &&
        other.account == account &&
        other.endpoint == endpoint;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, endpoint.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EndpointParametersRef
    on AutoDisposeFutureProviderRef<List<EndpointParameter>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `endpoint` of this provider.
  String get endpoint;
}

class _EndpointParametersProviderElement
    extends AutoDisposeFutureProviderElement<List<EndpointParameter>>
    with EndpointParametersRef {
  _EndpointParametersProviderElement(super.provider);

  @override
  Account get account => (origin as EndpointParametersProvider).account;
  @override
  String get endpoint => (origin as EndpointParametersProvider).endpoint;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
