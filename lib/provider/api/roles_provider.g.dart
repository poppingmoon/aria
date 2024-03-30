// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rolesHash() => r'cfa5f452a9fdada09511acd043f4a0d3bf64ee26';

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

/// See also [roles].
@ProviderFor(roles)
const rolesProvider = RolesFamily();

/// See also [roles].
class RolesFamily extends Family<AsyncValue<List<RolesListResponse>>> {
  /// See also [roles].
  const RolesFamily();

  /// See also [roles].
  RolesProvider call(
    Account account,
  ) {
    return RolesProvider(
      account,
    );
  }

  @override
  RolesProvider getProviderOverride(
    covariant RolesProvider provider,
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
  String? get name => r'rolesProvider';
}

/// See also [roles].
class RolesProvider extends AutoDisposeFutureProvider<List<RolesListResponse>> {
  /// See also [roles].
  RolesProvider(
    Account account,
  ) : this._internal(
          (ref) => roles(
            ref as RolesRef,
            account,
          ),
          from: rolesProvider,
          name: r'rolesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rolesHash,
          dependencies: RolesFamily._dependencies,
          allTransitiveDependencies: RolesFamily._allTransitiveDependencies,
          account: account,
        );

  RolesProvider._internal(
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
    FutureOr<List<RolesListResponse>> Function(RolesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RolesProvider._internal(
        (ref) => create(ref as RolesRef),
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
  AutoDisposeFutureProviderElement<List<RolesListResponse>> createElement() {
    return _RolesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RolesProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RolesRef on AutoDisposeFutureProviderRef<List<RolesListResponse>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _RolesProviderElement
    extends AutoDisposeFutureProviderElement<List<RolesListResponse>>
    with RolesRef {
  _RolesProviderElement(super.provider);

  @override
  Account get account => (origin as RolesProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
