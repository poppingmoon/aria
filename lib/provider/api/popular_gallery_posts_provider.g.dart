// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_gallery_posts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$popularGalleryPostsHash() =>
    r'99410ed538dada0f580564609b9821ed78d463b4';

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

/// See also [popularGalleryPosts].
@ProviderFor(popularGalleryPosts)
const popularGalleryPostsProvider = PopularGalleryPostsFamily();

/// See also [popularGalleryPosts].
class PopularGalleryPostsFamily extends Family<AsyncValue<List<GalleryPost>>> {
  /// See also [popularGalleryPosts].
  const PopularGalleryPostsFamily();

  /// See also [popularGalleryPosts].
  PopularGalleryPostsProvider call(Account account) {
    return PopularGalleryPostsProvider(account);
  }

  @override
  PopularGalleryPostsProvider getProviderOverride(
    covariant PopularGalleryPostsProvider provider,
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
  String? get name => r'popularGalleryPostsProvider';
}

/// See also [popularGalleryPosts].
class PopularGalleryPostsProvider
    extends AutoDisposeFutureProvider<List<GalleryPost>> {
  /// See also [popularGalleryPosts].
  PopularGalleryPostsProvider(Account account)
    : this._internal(
        (ref) => popularGalleryPosts(ref as PopularGalleryPostsRef, account),
        from: popularGalleryPostsProvider,
        name: r'popularGalleryPostsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$popularGalleryPostsHash,
        dependencies: PopularGalleryPostsFamily._dependencies,
        allTransitiveDependencies:
            PopularGalleryPostsFamily._allTransitiveDependencies,
        account: account,
      );

  PopularGalleryPostsProvider._internal(
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
  Override overrideWith(
    FutureOr<List<GalleryPost>> Function(PopularGalleryPostsRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PopularGalleryPostsProvider._internal(
        (ref) => create(ref as PopularGalleryPostsRef),
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
  AutoDisposeFutureProviderElement<List<GalleryPost>> createElement() {
    return _PopularGalleryPostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularGalleryPostsProvider && other.account == account;
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
mixin PopularGalleryPostsRef
    on AutoDisposeFutureProviderRef<List<GalleryPost>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _PopularGalleryPostsProviderElement
    extends AutoDisposeFutureProviderElement<List<GalleryPost>>
    with PopularGalleryPostsRef {
  _PopularGalleryPostsProviderElement(super.provider);

  @override
  Account get account => (origin as PopularGalleryPostsProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
