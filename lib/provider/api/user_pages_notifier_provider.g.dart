// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pages_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userPagesNotifierHash() => r'6dea8d44dbd66843430bc1c4ab34d1b086aac8a5';

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

abstract class _$UserPagesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Page>> {
  late final Account account;
  late final String userId;

  FutureOr<PaginationState<Page>> build(
    Account account,
    String userId,
  );
}

/// See also [UserPagesNotifier].
@ProviderFor(UserPagesNotifier)
const userPagesNotifierProvider = UserPagesNotifierFamily();

/// See also [UserPagesNotifier].
class UserPagesNotifierFamily
    extends Family<AsyncValue<PaginationState<Page>>> {
  /// See also [UserPagesNotifier].
  const UserPagesNotifierFamily();

  /// See also [UserPagesNotifier].
  UserPagesNotifierProvider call(
    Account account,
    String userId,
  ) {
    return UserPagesNotifierProvider(
      account,
      userId,
    );
  }

  @override
  UserPagesNotifierProvider getProviderOverride(
    covariant UserPagesNotifierProvider provider,
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
  String? get name => r'userPagesNotifierProvider';
}

/// See also [UserPagesNotifier].
class UserPagesNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    UserPagesNotifier, PaginationState<Page>> {
  /// See also [UserPagesNotifier].
  UserPagesNotifierProvider(
    Account account,
    String userId,
  ) : this._internal(
          () => UserPagesNotifier()
            ..account = account
            ..userId = userId,
          from: userPagesNotifierProvider,
          name: r'userPagesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userPagesNotifierHash,
          dependencies: UserPagesNotifierFamily._dependencies,
          allTransitiveDependencies:
              UserPagesNotifierFamily._allTransitiveDependencies,
          account: account,
          userId: userId,
        );

  UserPagesNotifierProvider._internal(
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
  FutureOr<PaginationState<Page>> runNotifierBuild(
    covariant UserPagesNotifier notifier,
  ) {
    return notifier.build(
      account,
      userId,
    );
  }

  @override
  Override overrideWith(UserPagesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserPagesNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<UserPagesNotifier,
      PaginationState<Page>> createElement() {
    return _UserPagesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserPagesNotifierProvider &&
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

mixin UserPagesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Page>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserPagesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserPagesNotifier,
        PaginationState<Page>> with UserPagesNotifierRef {
  _UserPagesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserPagesNotifierProvider).account;
  @override
  String get userId => (origin as UserPagesNotifierProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
