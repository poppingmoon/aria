// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_post_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$galleryPostNotifierHash() =>
    r'e7995c7a6f2e239b0fe0d96fb7f0e02909d499f3';

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

abstract class _$GalleryPostNotifier
    extends BuildlessAutoDisposeAsyncNotifier<GalleryPost> {
  late final Account account;
  late final String postId;

  FutureOr<GalleryPost> build(Account account, String postId);
}

/// See also [GalleryPostNotifier].
@ProviderFor(GalleryPostNotifier)
const galleryPostNotifierProvider = GalleryPostNotifierFamily();

/// See also [GalleryPostNotifier].
class GalleryPostNotifierFamily extends Family<AsyncValue<GalleryPost>> {
  /// See also [GalleryPostNotifier].
  const GalleryPostNotifierFamily();

  /// See also [GalleryPostNotifier].
  GalleryPostNotifierProvider call(Account account, String postId) {
    return GalleryPostNotifierProvider(account, postId);
  }

  @override
  GalleryPostNotifierProvider getProviderOverride(
    covariant GalleryPostNotifierProvider provider,
  ) {
    return call(provider.account, provider.postId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'galleryPostNotifierProvider';
}

/// See also [GalleryPostNotifier].
class GalleryPostNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<GalleryPostNotifier, GalleryPost> {
  /// See also [GalleryPostNotifier].
  GalleryPostNotifierProvider(Account account, String postId)
    : this._internal(
        () =>
            GalleryPostNotifier()
              ..account = account
              ..postId = postId,
        from: galleryPostNotifierProvider,
        name: r'galleryPostNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$galleryPostNotifierHash,
        dependencies: GalleryPostNotifierFamily._dependencies,
        allTransitiveDependencies:
            GalleryPostNotifierFamily._allTransitiveDependencies,
        account: account,
        postId: postId,
      );

  GalleryPostNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.postId,
  }) : super.internal();

  final Account account;
  final String postId;

  @override
  FutureOr<GalleryPost> runNotifierBuild(
    covariant GalleryPostNotifier notifier,
  ) {
    return notifier.build(account, postId);
  }

  @override
  Override overrideWith(GalleryPostNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GalleryPostNotifierProvider._internal(
        () =>
            create()
              ..account = account
              ..postId = postId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GalleryPostNotifier, GalleryPost>
  createElement() {
    return _GalleryPostNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GalleryPostNotifierProvider &&
        other.account == account &&
        other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GalleryPostNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<GalleryPost> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `postId` of this provider.
  String get postId;
}

class _GalleryPostNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          GalleryPostNotifier,
          GalleryPost
        >
    with GalleryPostNotifierRef {
  _GalleryPostNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as GalleryPostNotifierProvider).account;
  @override
  String get postId => (origin as GalleryPostNotifierProvider).postId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
