// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userPlaysNotifierHash() => r'd4a206d77626243871071e81d4e9733ec2c7da4a';

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

abstract class _$UserPlaysNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Flash>> {
  late final Account account;
  late final String userId;

  FutureOr<PaginationState<Flash>> build(Account account, String userId);
}

/// See also [UserPlaysNotifier].
@ProviderFor(UserPlaysNotifier)
const userPlaysNotifierProvider = UserPlaysNotifierFamily();

/// See also [UserPlaysNotifier].
class UserPlaysNotifierFamily
    extends Family<AsyncValue<PaginationState<Flash>>> {
  /// See also [UserPlaysNotifier].
  const UserPlaysNotifierFamily();

  /// See also [UserPlaysNotifier].
  UserPlaysNotifierProvider call(Account account, String userId) {
    return UserPlaysNotifierProvider(account, userId);
  }

  @override
  UserPlaysNotifierProvider getProviderOverride(
    covariant UserPlaysNotifierProvider provider,
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
  String? get name => r'userPlaysNotifierProvider';
}

/// See also [UserPlaysNotifier].
class UserPlaysNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          UserPlaysNotifier,
          PaginationState<Flash>
        > {
  /// See also [UserPlaysNotifier].
  UserPlaysNotifierProvider(Account account, String userId)
    : this._internal(
        () =>
            UserPlaysNotifier()
              ..account = account
              ..userId = userId,
        from: userPlaysNotifierProvider,
        name: r'userPlaysNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$userPlaysNotifierHash,
        dependencies: UserPlaysNotifierFamily._dependencies,
        allTransitiveDependencies:
            UserPlaysNotifierFamily._allTransitiveDependencies,
        account: account,
        userId: userId,
      );

  UserPlaysNotifierProvider._internal(
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
  FutureOr<PaginationState<Flash>> runNotifierBuild(
    covariant UserPlaysNotifier notifier,
  ) {
    return notifier.build(account, userId);
  }

  @override
  Override overrideWith(UserPlaysNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserPlaysNotifierProvider._internal(
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
    UserPlaysNotifier,
    PaginationState<Flash>
  >
  createElement() {
    return _UserPlaysNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserPlaysNotifierProvider &&
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
mixin UserPlaysNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Flash>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserPlaysNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          UserPlaysNotifier,
          PaginationState<Flash>
        >
    with UserPlaysNotifierRef {
  _UserPlaysNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserPlaysNotifierProvider).account;
  @override
  String get userId => (origin as UserPlaysNotifierProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
