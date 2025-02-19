// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinned_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pinnedUsersHash() => r'ac6b5320cbb9fdef3a8ed60484628053ce7053b2';

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

/// See also [pinnedUsers].
@ProviderFor(pinnedUsers)
const pinnedUsersProvider = PinnedUsersFamily();

/// See also [pinnedUsers].
class PinnedUsersFamily extends Family<AsyncValue<List<UserDetailed>>> {
  /// See also [pinnedUsers].
  const PinnedUsersFamily();

  /// See also [pinnedUsers].
  PinnedUsersProvider call(Account account) {
    return PinnedUsersProvider(account);
  }

  @override
  PinnedUsersProvider getProviderOverride(
    covariant PinnedUsersProvider provider,
  ) {
    return call(provider.account);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pinnedUsersProvider';
}

/// See also [pinnedUsers].
class PinnedUsersProvider
    extends AutoDisposeFutureProvider<List<UserDetailed>> {
  /// See also [pinnedUsers].
  PinnedUsersProvider(Account account)
    : this._internal(
        (ref) => pinnedUsers(ref as PinnedUsersRef, account),
        from: pinnedUsersProvider,
        name: r'pinnedUsersProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$pinnedUsersHash,
        dependencies: PinnedUsersFamily._dependencies,
        allTransitiveDependencies: PinnedUsersFamily._allTransitiveDependencies,
        account: account,
      );

  PinnedUsersProvider._internal(
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
    FutureOr<List<UserDetailed>> Function(PinnedUsersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PinnedUsersProvider._internal(
        (ref) => create(ref as PinnedUsersRef),
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
  AutoDisposeFutureProviderElement<List<UserDetailed>> createElement() {
    return _PinnedUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PinnedUsersProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PinnedUsersRef on AutoDisposeFutureProviderRef<List<UserDetailed>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _PinnedUsersProviderElement
    extends AutoDisposeFutureProviderElement<List<UserDetailed>>
    with PinnedUsersRef {
  _PinnedUsersProviderElement(super.provider);

  @override
  Account get account => (origin as PinnedUsersProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
