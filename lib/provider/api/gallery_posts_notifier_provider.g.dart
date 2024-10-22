// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$galleryPostsNotifierHash() =>
    r'5fde776ed1200a4a2caac3c94de25f25f0de89c5';

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

abstract class _$GalleryPostsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<GalleryPost>> {
  late final Account account;

  FutureOr<PaginationState<GalleryPost>> build(
    Account account,
  );
}

/// See also [GalleryPostsNotifier].
@ProviderFor(GalleryPostsNotifier)
const galleryPostsNotifierProvider = GalleryPostsNotifierFamily();

/// See also [GalleryPostsNotifier].
class GalleryPostsNotifierFamily
    extends Family<AsyncValue<PaginationState<GalleryPost>>> {
  /// See also [GalleryPostsNotifier].
  const GalleryPostsNotifierFamily();

  /// See also [GalleryPostsNotifier].
  GalleryPostsNotifierProvider call(
    Account account,
  ) {
    return GalleryPostsNotifierProvider(
      account,
    );
  }

  @override
  GalleryPostsNotifierProvider getProviderOverride(
    covariant GalleryPostsNotifierProvider provider,
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
  String? get name => r'galleryPostsNotifierProvider';
}

/// See also [GalleryPostsNotifier].
class GalleryPostsNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GalleryPostsNotifier, PaginationState<GalleryPost>> {
  /// See also [GalleryPostsNotifier].
  GalleryPostsNotifierProvider(
    Account account,
  ) : this._internal(
          () => GalleryPostsNotifier()..account = account,
          from: galleryPostsNotifierProvider,
          name: r'galleryPostsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$galleryPostsNotifierHash,
          dependencies: GalleryPostsNotifierFamily._dependencies,
          allTransitiveDependencies:
              GalleryPostsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  GalleryPostsNotifierProvider._internal(
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
    covariant GalleryPostsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(GalleryPostsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GalleryPostsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GalleryPostsNotifier,
      PaginationState<GalleryPost>> createElement() {
    return _GalleryPostsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GalleryPostsNotifierProvider && other.account == account;
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
mixin GalleryPostsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<GalleryPost>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _GalleryPostsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GalleryPostsNotifier,
        PaginationState<GalleryPost>> with GalleryPostsNotifierRef {
  _GalleryPostsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as GalleryPostsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
