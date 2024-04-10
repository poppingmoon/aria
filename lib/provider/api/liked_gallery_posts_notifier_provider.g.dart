// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$likedGalleryPostsNotifierHash() =>
    r'68d321907cbf36ba3fa2e3ac9a60f372c45f232a';

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

abstract class _$LikedGalleryPostsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<
        PaginationState<IGalleryLikesResponse>> {
  late final Account account;

  FutureOr<PaginationState<IGalleryLikesResponse>> build(
    Account account,
  );
}

/// See also [LikedGalleryPostsNotifier].
@ProviderFor(LikedGalleryPostsNotifier)
const likedGalleryPostsNotifierProvider = LikedGalleryPostsNotifierFamily();

/// See also [LikedGalleryPostsNotifier].
class LikedGalleryPostsNotifierFamily
    extends Family<AsyncValue<PaginationState<IGalleryLikesResponse>>> {
  /// See also [LikedGalleryPostsNotifier].
  const LikedGalleryPostsNotifierFamily();

  /// See also [LikedGalleryPostsNotifier].
  LikedGalleryPostsNotifierProvider call(
    Account account,
  ) {
    return LikedGalleryPostsNotifierProvider(
      account,
    );
  }

  @override
  LikedGalleryPostsNotifierProvider getProviderOverride(
    covariant LikedGalleryPostsNotifierProvider provider,
  ) {
    return call(
      provider.account,
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
  String? get name => r'likedGalleryPostsNotifierProvider';
}

/// See also [LikedGalleryPostsNotifier].
class LikedGalleryPostsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<LikedGalleryPostsNotifier,
        PaginationState<IGalleryLikesResponse>> {
  /// See also [LikedGalleryPostsNotifier].
  LikedGalleryPostsNotifierProvider(
    Account account,
  ) : this._internal(
          () => LikedGalleryPostsNotifier()..account = account,
          from: likedGalleryPostsNotifierProvider,
          name: r'likedGalleryPostsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$likedGalleryPostsNotifierHash,
          dependencies: LikedGalleryPostsNotifierFamily._dependencies,
          allTransitiveDependencies:
              LikedGalleryPostsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  LikedGalleryPostsNotifierProvider._internal(
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
  FutureOr<PaginationState<IGalleryLikesResponse>> runNotifierBuild(
    covariant LikedGalleryPostsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(LikedGalleryPostsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: LikedGalleryPostsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<LikedGalleryPostsNotifier,
      PaginationState<IGalleryLikesResponse>> createElement() {
    return _LikedGalleryPostsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LikedGalleryPostsNotifierProvider &&
        other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LikedGalleryPostsNotifierRef on AutoDisposeAsyncNotifierProviderRef<
    PaginationState<IGalleryLikesResponse>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _LikedGalleryPostsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LikedGalleryPostsNotifier,
        PaginationState<IGalleryLikesResponse>>
    with LikedGalleryPostsNotifierRef {
  _LikedGalleryPostsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as LikedGalleryPostsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
