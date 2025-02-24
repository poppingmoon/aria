// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$likedPlaysNotifierHash() =>
    r'7b18b1e2f068995b38e3b4a9c07c14235092bf33';

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

abstract class _$LikedPlaysNotifier
    extends
        BuildlessAutoDisposeAsyncNotifier<
          PaginationState<FlashMyLikesResponse>
        > {
  late final Account account;

  FutureOr<PaginationState<FlashMyLikesResponse>> build(Account account);
}

/// See also [LikedPlaysNotifier].
@ProviderFor(LikedPlaysNotifier)
const likedPlaysNotifierProvider = LikedPlaysNotifierFamily();

/// See also [LikedPlaysNotifier].
class LikedPlaysNotifierFamily
    extends Family<AsyncValue<PaginationState<FlashMyLikesResponse>>> {
  /// See also [LikedPlaysNotifier].
  const LikedPlaysNotifierFamily();

  /// See also [LikedPlaysNotifier].
  LikedPlaysNotifierProvider call(Account account) {
    return LikedPlaysNotifierProvider(account);
  }

  @override
  LikedPlaysNotifierProvider getProviderOverride(
    covariant LikedPlaysNotifierProvider provider,
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
  String? get name => r'likedPlaysNotifierProvider';
}

/// See also [LikedPlaysNotifier].
class LikedPlaysNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          LikedPlaysNotifier,
          PaginationState<FlashMyLikesResponse>
        > {
  /// See also [LikedPlaysNotifier].
  LikedPlaysNotifierProvider(Account account)
    : this._internal(
        () => LikedPlaysNotifier()..account = account,
        from: likedPlaysNotifierProvider,
        name: r'likedPlaysNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$likedPlaysNotifierHash,
        dependencies: LikedPlaysNotifierFamily._dependencies,
        allTransitiveDependencies:
            LikedPlaysNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  LikedPlaysNotifierProvider._internal(
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
  FutureOr<PaginationState<FlashMyLikesResponse>> runNotifierBuild(
    covariant LikedPlaysNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(LikedPlaysNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: LikedPlaysNotifierProvider._internal(
        () => create()..account = account,
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
  AutoDisposeAsyncNotifierProviderElement<
    LikedPlaysNotifier,
    PaginationState<FlashMyLikesResponse>
  >
  createElement() {
    return _LikedPlaysNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LikedPlaysNotifierProvider && other.account == account;
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
mixin LikedPlaysNotifierRef
    on
        AutoDisposeAsyncNotifierProviderRef<
          PaginationState<FlashMyLikesResponse>
        > {
  /// The parameter `account` of this provider.
  Account get account;
}

class _LikedPlaysNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          LikedPlaysNotifier,
          PaginationState<FlashMyLikesResponse>
        >
    with LikedPlaysNotifierRef {
  _LikedPlaysNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as LikedPlaysNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
