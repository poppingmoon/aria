// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userNotifierHash() => r'098020f834bd345dcdbe1d0d21bb4ae997a7e92a';

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

abstract class _$UserNotifier
    extends BuildlessAutoDisposeAsyncNotifier<UserDetailed> {
  late final Account account;
  late final String? userId;
  late final String? username;
  late final String? host;

  FutureOr<UserDetailed> build(
    Account account, {
    String? userId,
    String? username,
    String? host,
  });
}

/// See also [UserNotifier].
@ProviderFor(UserNotifier)
const userNotifierProvider = UserNotifierFamily();

/// See also [UserNotifier].
class UserNotifierFamily extends Family<AsyncValue<UserDetailed>> {
  /// See also [UserNotifier].
  const UserNotifierFamily();

  /// See also [UserNotifier].
  UserNotifierProvider call(
    Account account, {
    String? userId,
    String? username,
    String? host,
  }) {
    return UserNotifierProvider(
      account,
      userId: userId,
      username: username,
      host: host,
    );
  }

  @override
  UserNotifierProvider getProviderOverride(
    covariant UserNotifierProvider provider,
  ) {
    return call(
      provider.account,
      userId: provider.userId,
      username: provider.username,
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
  String? get name => r'userNotifierProvider';
}

/// See also [UserNotifier].
class UserNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserNotifier, UserDetailed> {
  /// See also [UserNotifier].
  UserNotifierProvider(
    Account account, {
    String? userId,
    String? username,
    String? host,
  }) : this._internal(
          () => UserNotifier()
            ..account = account
            ..userId = userId
            ..username = username
            ..host = host,
          from: userNotifierProvider,
          name: r'userNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userNotifierHash,
          dependencies: UserNotifierFamily._dependencies,
          allTransitiveDependencies:
              UserNotifierFamily._allTransitiveDependencies,
          account: account,
          userId: userId,
          username: username,
          host: host,
        );

  UserNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.userId,
    required this.username,
    required this.host,
  }) : super.internal();

  final Account account;
  final String? userId;
  final String? username;
  final String? host;

  @override
  FutureOr<UserDetailed> runNotifierBuild(
    covariant UserNotifier notifier,
  ) {
    return notifier.build(
      account,
      userId: userId,
      username: username,
      host: host,
    );
  }

  @override
  Override overrideWith(UserNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserNotifierProvider._internal(
        () => create()
          ..account = account
          ..userId = userId
          ..username = username
          ..host = host,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        userId: userId,
        username: username,
        host: host,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserNotifier, UserDetailed>
      createElement() {
    return _UserNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserNotifierProvider &&
        other.account == account &&
        other.userId == userId &&
        other.username == username &&
        other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserNotifierRef on AutoDisposeAsyncNotifierProviderRef<UserDetailed> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String? get userId;

  /// The parameter `username` of this provider.
  String? get username;

  /// The parameter `host` of this provider.
  String? get host;
}

class _UserNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserNotifier, UserDetailed>
    with UserNotifierRef {
  _UserNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserNotifierProvider).account;
  @override
  String? get userId => (origin as UserNotifierProvider).userId;
  @override
  String? get username => (origin as UserNotifierProvider).username;
  @override
  String? get host => (origin as UserNotifierProvider).host;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
