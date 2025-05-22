// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_followers_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userFollowersNotifierHash() =>
    r'48bed243a6c807c34f94aa30182bc3bfbba352fd';

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

abstract class _$UserFollowersNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Following>> {
  late final Account account;
  late final String userId;

  FutureOr<PaginationState<Following>> build(Account account, String userId);
}

/// See also [UserFollowersNotifier].
@ProviderFor(UserFollowersNotifier)
const userFollowersNotifierProvider = UserFollowersNotifierFamily();

/// See also [UserFollowersNotifier].
class UserFollowersNotifierFamily
    extends Family<AsyncValue<PaginationState<Following>>> {
  /// See also [UserFollowersNotifier].
  const UserFollowersNotifierFamily();

  /// See also [UserFollowersNotifier].
  UserFollowersNotifierProvider call(Account account, String userId) {
    return UserFollowersNotifierProvider(account, userId);
  }

  @override
  UserFollowersNotifierProvider getProviderOverride(
    covariant UserFollowersNotifierProvider provider,
  ) {
    return call(provider.account, provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userFollowersNotifierProvider';
}

/// See also [UserFollowersNotifier].
class UserFollowersNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          UserFollowersNotifier,
          PaginationState<Following>
        > {
  /// See also [UserFollowersNotifier].
  UserFollowersNotifierProvider(Account account, String userId)
    : this._internal(
        () => UserFollowersNotifier()
          ..account = account
          ..userId = userId,
        from: userFollowersNotifierProvider,
        name: r'userFollowersNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userFollowersNotifierHash,
        dependencies: UserFollowersNotifierFamily._dependencies,
        allTransitiveDependencies:
            UserFollowersNotifierFamily._allTransitiveDependencies,
        account: account,
        userId: userId,
      );

  UserFollowersNotifierProvider._internal(
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
  FutureOr<PaginationState<Following>> runNotifierBuild(
    covariant UserFollowersNotifier notifier,
  ) {
    return notifier.build(account, userId);
  }

  @override
  Override overrideWith(UserFollowersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserFollowersNotifierProvider._internal(
        () => create()
          ..account = account
          ..userId = userId,
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
  AutoDisposeAsyncNotifierProviderElement<
    UserFollowersNotifier,
    PaginationState<Following>
  >
  createElement() {
    return _UserFollowersNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserFollowersNotifierProvider &&
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
mixin UserFollowersNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Following>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserFollowersNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          UserFollowersNotifier,
          PaginationState<Following>
        >
    with UserFollowersNotifierRef {
  _UserFollowersNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserFollowersNotifierProvider).account;
  @override
  String get userId => (origin as UserFollowersNotifierProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
