// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_following_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userFollowingNotifierHash() =>
    r'262c3f53d047c2184dad660bd06f78072df028ac';

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

abstract class _$UserFollowingNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<Following>> {
  late final Account account;
  late final String userId;

  Stream<PaginationState<Following>> build(Account account, String userId);
}

/// See also [UserFollowingNotifier].
@ProviderFor(UserFollowingNotifier)
const userFollowingNotifierProvider = UserFollowingNotifierFamily();

/// See also [UserFollowingNotifier].
class UserFollowingNotifierFamily
    extends Family<AsyncValue<PaginationState<Following>>> {
  /// See also [UserFollowingNotifier].
  const UserFollowingNotifierFamily();

  /// See also [UserFollowingNotifier].
  UserFollowingNotifierProvider call(Account account, String userId) {
    return UserFollowingNotifierProvider(account, userId);
  }

  @override
  UserFollowingNotifierProvider getProviderOverride(
    covariant UserFollowingNotifierProvider provider,
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
  String? get name => r'userFollowingNotifierProvider';
}

/// See also [UserFollowingNotifier].
class UserFollowingNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          UserFollowingNotifier,
          PaginationState<Following>
        > {
  /// See also [UserFollowingNotifier].
  UserFollowingNotifierProvider(Account account, String userId)
    : this._internal(
        () => UserFollowingNotifier()
          ..account = account
          ..userId = userId,
        from: userFollowingNotifierProvider,
        name: r'userFollowingNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userFollowingNotifierHash,
        dependencies: UserFollowingNotifierFamily._dependencies,
        allTransitiveDependencies:
            UserFollowingNotifierFamily._allTransitiveDependencies,
        account: account,
        userId: userId,
      );

  UserFollowingNotifierProvider._internal(
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
  Stream<PaginationState<Following>> runNotifierBuild(
    covariant UserFollowingNotifier notifier,
  ) {
    return notifier.build(account, userId);
  }

  @override
  Override overrideWith(UserFollowingNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserFollowingNotifierProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<
    UserFollowingNotifier,
    PaginationState<Following>
  >
  createElement() {
    return _UserFollowingNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserFollowingNotifierProvider &&
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
mixin UserFollowingNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<Following>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserFollowingNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          UserFollowingNotifier,
          PaginationState<Following>
        >
    with UserFollowingNotifierRef {
  _UserFollowingNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserFollowingNotifierProvider).account;
  @override
  String get userId => (origin as UserFollowingNotifierProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
