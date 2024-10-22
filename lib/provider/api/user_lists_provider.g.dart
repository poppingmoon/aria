// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_lists_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userListsHash() => r'b377b530088f03cf69ee7236d9826c7e86f7ba57';

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

/// See also [userLists].
@ProviderFor(userLists)
const userListsProvider = UserListsFamily();

/// See also [userLists].
class UserListsFamily extends Family<AsyncValue<List<UsersList>>> {
  /// See also [userLists].
  const UserListsFamily();

  /// See also [userLists].
  UserListsProvider call(
    Account account,
    String userId,
  ) {
    return UserListsProvider(
      account,
      userId,
    );
  }

  @override
  UserListsProvider getProviderOverride(
    covariant UserListsProvider provider,
  ) {
    return call(
      provider.account,
      provider.userId,
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
  String? get name => r'userListsProvider';
}

/// See also [userLists].
class UserListsProvider extends AutoDisposeFutureProvider<List<UsersList>> {
  /// See also [userLists].
  UserListsProvider(
    Account account,
    String userId,
  ) : this._internal(
          (ref) => userLists(
            ref as UserListsRef,
            account,
            userId,
          ),
          from: userListsProvider,
          name: r'userListsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userListsHash,
          dependencies: UserListsFamily._dependencies,
          allTransitiveDependencies: UserListsFamily._allTransitiveDependencies,
          account: account,
          userId: userId,
        );

  UserListsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.userId,
  }) : super.internal();

  final Account account;
  final String userId;

  @override
  Override overrideWith(
    FutureOr<List<UsersList>> Function(UserListsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserListsProvider._internal(
        (ref) => create(ref as UserListsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<UsersList>> createElement() {
    return _UserListsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserListsProvider &&
        other.account == account &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserListsRef on AutoDisposeFutureProviderRef<List<UsersList>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserListsProviderElement
    extends AutoDisposeFutureProviderElement<List<UsersList>>
    with UserListsRef {
  _UserListsProviderElement(super.provider);

  @override
  Account get account => (origin as UserListsProvider).account;
  @override
  String get userId => (origin as UserListsProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
