// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$metaHash() => r'b2f6c15751a6b7c692c3aba36c7e8eeb19a26fba';

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

/// See also [meta].
@ProviderFor(meta)
const metaProvider = MetaFamily();

/// See also [meta].
class MetaFamily extends Family<AsyncValue<MetaResponse>> {
  /// See also [meta].
  const MetaFamily();

  /// See also [meta].
  MetaProvider call(
    Account account,
  ) {
    return MetaProvider(
      account,
    );
  }

  @override
  MetaProvider getProviderOverride(
    covariant MetaProvider provider,
  ) {
    return call(
      provider.account,
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
  String? get name => r'metaProvider';
}

/// See also [meta].
class MetaProvider extends AutoDisposeFutureProvider<MetaResponse> {
  /// See also [meta].
  MetaProvider(
    Account account,
  ) : this._internal(
          (ref) => meta(
            ref as MetaRef,
            account,
          ),
          from: metaProvider,
          name: r'metaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$metaHash,
          dependencies: MetaFamily._dependencies,
          allTransitiveDependencies: MetaFamily._allTransitiveDependencies,
          account: account,
        );

  MetaProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  Override overrideWith(
    FutureOr<MetaResponse> Function(MetaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MetaProvider._internal(
        (ref) => create(ref as MetaRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MetaResponse> createElement() {
    return _MetaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MetaProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MetaRef on AutoDisposeFutureProviderRef<MetaResponse> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MetaProviderElement
    extends AutoDisposeFutureProviderElement<MetaResponse> with MetaRef {
  _MetaProviderElement(super.provider);

  @override
  Account get account => (origin as MetaProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
