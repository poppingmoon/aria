// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$roleHash() => r'a5443738a0f6c2324306d149e7a67b1bdf70b5a0';

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

/// See also [role].
@ProviderFor(role)
const roleProvider = RoleFamily();

/// See also [role].
class RoleFamily extends Family<AsyncValue<RolesListResponse>> {
  /// See also [role].
  const RoleFamily();

  /// See also [role].
  RoleProvider call(
    Account account,
    String roleId,
  ) {
    return RoleProvider(
      account,
      roleId,
    );
  }

  @override
  RoleProvider getProviderOverride(
    covariant RoleProvider provider,
  ) {
    return call(
      provider.account,
      provider.roleId,
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
  String? get name => r'roleProvider';
}

/// See also [role].
class RoleProvider extends AutoDisposeFutureProvider<RolesListResponse> {
  /// See also [role].
  RoleProvider(
    Account account,
    String roleId,
  ) : this._internal(
          (ref) => role(
            ref as RoleRef,
            account,
            roleId,
          ),
          from: roleProvider,
          name: r'roleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$roleHash,
          dependencies: RoleFamily._dependencies,
          allTransitiveDependencies: RoleFamily._allTransitiveDependencies,
          account: account,
          roleId: roleId,
        );

  RoleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.roleId,
  }) : super.internal();

  final Account account;
  final String roleId;

  @override
  Override overrideWith(
    FutureOr<RolesListResponse> Function(RoleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RoleProvider._internal(
        (ref) => create(ref as RoleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        roleId: roleId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RolesListResponse> createElement() {
    return _RoleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RoleProvider &&
        other.account == account &&
        other.roleId == roleId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, roleId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RoleRef on AutoDisposeFutureProviderRef<RolesListResponse> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `roleId` of this provider.
  String get roleId;
}

class _RoleProviderElement
    extends AutoDisposeFutureProviderElement<RolesListResponse> with RoleRef {
  _RoleProviderElement(super.provider);

  @override
  Account get account => (origin as RoleProvider).account;
  @override
  String get roleId => (origin as RoleProvider).roleId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
