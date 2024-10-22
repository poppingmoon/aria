// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$usersNotifierHash() => r'80644e3ea72a7973b0985ccb1d86bacd3e817ba1';

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

abstract class _$UsersNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<UserDetailed>> {
  late final Account account;
  late final UsersSortType? sort;
  late final Origin? userOrigin;
  late final String? host;

  FutureOr<PaginationState<UserDetailed>> build(
    Account account, {
    UsersSortType? sort,
    Origin? userOrigin,
    String? host,
  });
}

/// See also [UsersNotifier].
@ProviderFor(UsersNotifier)
const usersNotifierProvider = UsersNotifierFamily();

/// See also [UsersNotifier].
class UsersNotifierFamily
    extends Family<AsyncValue<PaginationState<UserDetailed>>> {
  /// See also [UsersNotifier].
  const UsersNotifierFamily();

  /// See also [UsersNotifier].
  UsersNotifierProvider call(
    Account account, {
    UsersSortType? sort,
    Origin? userOrigin,
    String? host,
  }) {
    return UsersNotifierProvider(
      account,
      sort: sort,
      userOrigin: userOrigin,
      host: host,
    );
  }

  @override
  UsersNotifierProvider getProviderOverride(
    covariant UsersNotifierProvider provider,
  ) {
    return call(
      provider.account,
      sort: provider.sort,
      userOrigin: provider.userOrigin,
      host: provider.host,
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
  String? get name => r'usersNotifierProvider';
}

/// See also [UsersNotifier].
class UsersNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    UsersNotifier, PaginationState<UserDetailed>> {
  /// See also [UsersNotifier].
  UsersNotifierProvider(
    Account account, {
    UsersSortType? sort,
    Origin? userOrigin,
    String? host,
  }) : this._internal(
          () => UsersNotifier()
            ..account = account
            ..sort = sort
            ..userOrigin = userOrigin
            ..host = host,
          from: usersNotifierProvider,
          name: r'usersNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$usersNotifierHash,
          dependencies: UsersNotifierFamily._dependencies,
          allTransitiveDependencies:
              UsersNotifierFamily._allTransitiveDependencies,
          account: account,
          sort: sort,
          userOrigin: userOrigin,
          host: host,
        );

  UsersNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.sort,
    required this.userOrigin,
    required this.host,
  }) : super.internal();

  final Account account;
  final UsersSortType? sort;
  final Origin? userOrigin;
  final String? host;

  @override
  FutureOr<PaginationState<UserDetailed>> runNotifierBuild(
    covariant UsersNotifier notifier,
  ) {
    return notifier.build(
      account,
      sort: sort,
      userOrigin: userOrigin,
      host: host,
    );
  }

  @override
  Override overrideWith(UsersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UsersNotifierProvider._internal(
        () => create()
          ..account = account
          ..sort = sort
          ..userOrigin = userOrigin
          ..host = host,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        sort: sort,
        userOrigin: userOrigin,
        host: host,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UsersNotifier,
      PaginationState<UserDetailed>> createElement() {
    return _UsersNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UsersNotifierProvider &&
        other.account == account &&
        other.sort == sort &&
        other.userOrigin == userOrigin &&
        other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, sort.hashCode);
    hash = _SystemHash.combine(hash, userOrigin.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UsersNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<UserDetailed>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `sort` of this provider.
  UsersSortType? get sort;

  /// The parameter `userOrigin` of this provider.
  Origin? get userOrigin;

  /// The parameter `host` of this provider.
  String? get host;
}

class _UsersNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UsersNotifier,
        PaginationState<UserDetailed>> with UsersNotifierRef {
  _UsersNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UsersNotifierProvider).account;
  @override
  UsersSortType? get sort => (origin as UsersNotifierProvider).sort;
  @override
  Origin? get userOrigin => (origin as UsersNotifierProvider).userOrigin;
  @override
  String? get host => (origin as UsersNotifierProvider).host;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
