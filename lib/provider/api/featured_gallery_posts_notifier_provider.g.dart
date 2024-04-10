// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$featuredGalleryPostsNotifierHash() =>
    r'da56acba3ede00fdd352fb54f5dd49469396f6d5';

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

abstract class _$FeaturedGalleryPostsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<GalleryPost>> {
  late final Account account;

  FutureOr<PaginationState<GalleryPost>> build(
    Account account,
  );
}

/// See also [FeaturedGalleryPostsNotifier].
@ProviderFor(FeaturedGalleryPostsNotifier)
const featuredGalleryPostsNotifierProvider =
    FeaturedGalleryPostsNotifierFamily();

/// See also [FeaturedGalleryPostsNotifier].
class FeaturedGalleryPostsNotifierFamily
    extends Family<AsyncValue<PaginationState<GalleryPost>>> {
  /// See also [FeaturedGalleryPostsNotifier].
  const FeaturedGalleryPostsNotifierFamily();

  /// See also [FeaturedGalleryPostsNotifier].
  FeaturedGalleryPostsNotifierProvider call(
    Account account,
  ) {
    return FeaturedGalleryPostsNotifierProvider(
      account,
    );
  }

  @override
  FeaturedGalleryPostsNotifierProvider getProviderOverride(
    covariant FeaturedGalleryPostsNotifierProvider provider,
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
  String? get name => r'featuredGalleryPostsNotifierProvider';
}

/// See also [FeaturedGalleryPostsNotifier].
class FeaturedGalleryPostsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FeaturedGalleryPostsNotifier,
        PaginationState<GalleryPost>> {
  /// See also [FeaturedGalleryPostsNotifier].
  FeaturedGalleryPostsNotifierProvider(
    Account account,
  ) : this._internal(
          () => FeaturedGalleryPostsNotifier()..account = account,
          from: featuredGalleryPostsNotifierProvider,
          name: r'featuredGalleryPostsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$featuredGalleryPostsNotifierHash,
          dependencies: FeaturedGalleryPostsNotifierFamily._dependencies,
          allTransitiveDependencies:
              FeaturedGalleryPostsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  FeaturedGalleryPostsNotifierProvider._internal(
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
  FutureOr<PaginationState<GalleryPost>> runNotifierBuild(
    covariant FeaturedGalleryPostsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(FeaturedGalleryPostsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FeaturedGalleryPostsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<FeaturedGalleryPostsNotifier,
      PaginationState<GalleryPost>> createElement() {
    return _FeaturedGalleryPostsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedGalleryPostsNotifierProvider &&
        other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FeaturedGalleryPostsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<GalleryPost>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FeaturedGalleryPostsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        FeaturedGalleryPostsNotifier,
        PaginationState<GalleryPost>> with FeaturedGalleryPostsNotifierRef {
  _FeaturedGalleryPostsNotifierProviderElement(super.provider);

  @override
  Account get account =>
      (origin as FeaturedGalleryPostsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
