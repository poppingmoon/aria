// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reactions_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userReactionsNotifierHash() =>
    r'ad7c60dcaad5174a489202f7eae00ff03718b671';

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

abstract class _$UserReactionsNotifier
    extends
        BuildlessAutoDisposeAsyncNotifier<
          PaginationState<UsersReactionsResponse>
        > {
  late final Account account;
  late final String userId;

  FutureOr<PaginationState<UsersReactionsResponse>> build(
    Account account,
    String userId,
  );
}

/// See also [UserReactionsNotifier].
@ProviderFor(UserReactionsNotifier)
const userReactionsNotifierProvider = UserReactionsNotifierFamily();

/// See also [UserReactionsNotifier].
class UserReactionsNotifierFamily
    extends Family<AsyncValue<PaginationState<UsersReactionsResponse>>> {
  /// See also [UserReactionsNotifier].
  const UserReactionsNotifierFamily();

  /// See also [UserReactionsNotifier].
  UserReactionsNotifierProvider call(Account account, String userId) {
    return UserReactionsNotifierProvider(account, userId);
  }

  @override
  UserReactionsNotifierProvider getProviderOverride(
    covariant UserReactionsNotifierProvider provider,
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
  String? get name => r'userReactionsNotifierProvider';
}

/// See also [UserReactionsNotifier].
class UserReactionsNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          UserReactionsNotifier,
          PaginationState<UsersReactionsResponse>
        > {
  /// See also [UserReactionsNotifier].
  UserReactionsNotifierProvider(Account account, String userId)
    : this._internal(
        () =>
            UserReactionsNotifier()
              ..account = account
              ..userId = userId,
        from: userReactionsNotifierProvider,
        name: r'userReactionsNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$userReactionsNotifierHash,
        dependencies: UserReactionsNotifierFamily._dependencies,
        allTransitiveDependencies:
            UserReactionsNotifierFamily._allTransitiveDependencies,
        account: account,
        userId: userId,
      );

  UserReactionsNotifierProvider._internal(
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
  FutureOr<PaginationState<UsersReactionsResponse>> runNotifierBuild(
    covariant UserReactionsNotifier notifier,
  ) {
    return notifier.build(account, userId);
  }

  @override
  Override overrideWith(UserReactionsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserReactionsNotifierProvider._internal(
        () =>
            create()
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
    UserReactionsNotifier,
    PaginationState<UsersReactionsResponse>
  >
  createElement() {
    return _UserReactionsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserReactionsNotifierProvider &&
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
mixin UserReactionsNotifierRef
    on
        AutoDisposeAsyncNotifierProviderRef<
          PaginationState<UsersReactionsResponse>
        > {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserReactionsNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          UserReactionsNotifier,
          PaginationState<UsersReactionsResponse>
        >
    with UserReactionsNotifierRef {
  _UserReactionsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserReactionsNotifierProvider).account;
  @override
  String get userId => (origin as UserReactionsNotifierProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
