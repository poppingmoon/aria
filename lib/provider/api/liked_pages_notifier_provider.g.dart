// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_pages_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$likedPagesNotifierHash() =>
    r'bfcfad309a7f34b0ed6392280c50d1e537360905';

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

abstract class _$LikedPagesNotifier
    extends
        BuildlessAutoDisposeStreamNotifier<
          PaginationState<IPageLikesResponse>
        > {
  late final Account account;

  Stream<PaginationState<IPageLikesResponse>> build(Account account);
}

/// See also [LikedPagesNotifier].
@ProviderFor(LikedPagesNotifier)
const likedPagesNotifierProvider = LikedPagesNotifierFamily();

/// See also [LikedPagesNotifier].
class LikedPagesNotifierFamily
    extends Family<AsyncValue<PaginationState<IPageLikesResponse>>> {
  /// See also [LikedPagesNotifier].
  const LikedPagesNotifierFamily();

  /// See also [LikedPagesNotifier].
  LikedPagesNotifierProvider call(Account account) {
    return LikedPagesNotifierProvider(account);
  }

  @override
  LikedPagesNotifierProvider getProviderOverride(
    covariant LikedPagesNotifierProvider provider,
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
  String? get name => r'likedPagesNotifierProvider';
}

/// See also [LikedPagesNotifier].
class LikedPagesNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          LikedPagesNotifier,
          PaginationState<IPageLikesResponse>
        > {
  /// See also [LikedPagesNotifier].
  LikedPagesNotifierProvider(Account account)
    : this._internal(
        () => LikedPagesNotifier()..account = account,
        from: likedPagesNotifierProvider,
        name: r'likedPagesNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$likedPagesNotifierHash,
        dependencies: LikedPagesNotifierFamily._dependencies,
        allTransitiveDependencies:
            LikedPagesNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  LikedPagesNotifierProvider._internal(
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
  Stream<PaginationState<IPageLikesResponse>> runNotifierBuild(
    covariant LikedPagesNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(LikedPagesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: LikedPagesNotifierProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<
    LikedPagesNotifier,
    PaginationState<IPageLikesResponse>
  >
  createElement() {
    return _LikedPagesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LikedPagesNotifierProvider && other.account == account;
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
mixin LikedPagesNotifierRef
    on
        AutoDisposeStreamNotifierProviderRef<
          PaginationState<IPageLikesResponse>
        > {
  /// The parameter `account` of this provider.
  Account get account;
}

class _LikedPagesNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          LikedPagesNotifier,
          PaginationState<IPageLikesResponse>
        >
    with LikedPagesNotifierRef {
  _LikedPagesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as LikedPagesNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
