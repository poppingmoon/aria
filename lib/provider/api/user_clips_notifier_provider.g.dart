// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_clips_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userClipsNotifierHash() => r'ac4b328367a1f90db2d6830c5c9b7de2f27644c3';

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

abstract class _$UserClipsNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<Clip>> {
  late final Account account;
  late final String userId;

  Stream<PaginationState<Clip>> build(Account account, String userId);
}

/// See also [UserClipsNotifier].
@ProviderFor(UserClipsNotifier)
const userClipsNotifierProvider = UserClipsNotifierFamily();

/// See also [UserClipsNotifier].
class UserClipsNotifierFamily
    extends Family<AsyncValue<PaginationState<Clip>>> {
  /// See also [UserClipsNotifier].
  const UserClipsNotifierFamily();

  /// See also [UserClipsNotifier].
  UserClipsNotifierProvider call(Account account, String userId) {
    return UserClipsNotifierProvider(account, userId);
  }

  @override
  UserClipsNotifierProvider getProviderOverride(
    covariant UserClipsNotifierProvider provider,
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
  String? get name => r'userClipsNotifierProvider';
}

/// See also [UserClipsNotifier].
class UserClipsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          UserClipsNotifier,
          PaginationState<Clip>
        > {
  /// See also [UserClipsNotifier].
  UserClipsNotifierProvider(Account account, String userId)
    : this._internal(
        () => UserClipsNotifier()
          ..account = account
          ..userId = userId,
        from: userClipsNotifierProvider,
        name: r'userClipsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userClipsNotifierHash,
        dependencies: UserClipsNotifierFamily._dependencies,
        allTransitiveDependencies:
            UserClipsNotifierFamily._allTransitiveDependencies,
        account: account,
        userId: userId,
      );

  UserClipsNotifierProvider._internal(
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
  Stream<PaginationState<Clip>> runNotifierBuild(
    covariant UserClipsNotifier notifier,
  ) {
    return notifier.build(account, userId);
  }

  @override
  Override overrideWith(UserClipsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserClipsNotifierProvider._internal(
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
    UserClipsNotifier,
    PaginationState<Clip>
  >
  createElement() {
    return _UserClipsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserClipsNotifierProvider &&
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
mixin UserClipsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<Clip>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserClipsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          UserClipsNotifier,
          PaginationState<Clip>
        >
    with UserClipsNotifierRef {
  _UserClipsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserClipsNotifierProvider).account;
  @override
  String get userId => (origin as UserClipsNotifierProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
