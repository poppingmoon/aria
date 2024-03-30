// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$roleUsersNotifierHash() => r'eab591ce39fe9093e7a29855850a6b65693e8db5';

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

abstract class _$RoleUsersNotifier extends BuildlessAutoDisposeAsyncNotifier<
    PaginationState<RolesUsersResponse>> {
  late final Account account;
  late final String roleId;

  FutureOr<PaginationState<RolesUsersResponse>> build(
    Account account,
    String roleId,
  );
}

/// See also [RoleUsersNotifier].
@ProviderFor(RoleUsersNotifier)
const roleUsersNotifierProvider = RoleUsersNotifierFamily();

/// See also [RoleUsersNotifier].
class RoleUsersNotifierFamily
    extends Family<AsyncValue<PaginationState<RolesUsersResponse>>> {
  /// See also [RoleUsersNotifier].
  const RoleUsersNotifierFamily();

  /// See also [RoleUsersNotifier].
  RoleUsersNotifierProvider call(
    Account account,
    String roleId,
  ) {
    return RoleUsersNotifierProvider(
      account,
      roleId,
    );
  }

  @override
  RoleUsersNotifierProvider getProviderOverride(
    covariant RoleUsersNotifierProvider provider,
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
  String? get name => r'roleUsersNotifierProvider';
}

/// See also [RoleUsersNotifier].
class RoleUsersNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RoleUsersNotifier, PaginationState<RolesUsersResponse>> {
  /// See also [RoleUsersNotifier].
  RoleUsersNotifierProvider(
    Account account,
    String roleId,
  ) : this._internal(
          () => RoleUsersNotifier()
            ..account = account
            ..roleId = roleId,
          from: roleUsersNotifierProvider,
          name: r'roleUsersNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$roleUsersNotifierHash,
          dependencies: RoleUsersNotifierFamily._dependencies,
          allTransitiveDependencies:
              RoleUsersNotifierFamily._allTransitiveDependencies,
          account: account,
          roleId: roleId,
        );

  RoleUsersNotifierProvider._internal(
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
  FutureOr<PaginationState<RolesUsersResponse>> runNotifierBuild(
    covariant RoleUsersNotifier notifier,
  ) {
    return notifier.build(
      account,
      roleId,
    );
  }

  @override
  Override overrideWith(RoleUsersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RoleUsersNotifierProvider._internal(
        () => create()
          ..account = account
          ..roleId = roleId,
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
  AutoDisposeAsyncNotifierProviderElement<RoleUsersNotifier,
      PaginationState<RolesUsersResponse>> createElement() {
    return _RoleUsersNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RoleUsersNotifierProvider &&
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

mixin RoleUsersNotifierRef on AutoDisposeAsyncNotifierProviderRef<
    PaginationState<RolesUsersResponse>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `roleId` of this provider.
  String get roleId;
}

class _RoleUsersNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RoleUsersNotifier,
        PaginationState<RolesUsersResponse>> with RoleUsersNotifierRef {
  _RoleUsersNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as RoleUsersNotifierProvider).account;
  @override
  String get roleId => (origin as RoleUsersNotifierProvider).roleId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
