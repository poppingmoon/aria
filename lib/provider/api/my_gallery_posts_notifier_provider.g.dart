// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myGalleryPostsNotifierHash() =>
    r'8fbb07d31d7087a3b86bcef5bfac6b463cb0968a';

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

abstract class _$MyGalleryPostsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<GalleryPost>> {
  late final Account account;

  FutureOr<PaginationState<GalleryPost>> build(Account account);
}

/// See also [MyGalleryPostsNotifier].
@ProviderFor(MyGalleryPostsNotifier)
const myGalleryPostsNotifierProvider = MyGalleryPostsNotifierFamily();

/// See also [MyGalleryPostsNotifier].
class MyGalleryPostsNotifierFamily
    extends Family<AsyncValue<PaginationState<GalleryPost>>> {
  /// See also [MyGalleryPostsNotifier].
  const MyGalleryPostsNotifierFamily();

  /// See also [MyGalleryPostsNotifier].
  MyGalleryPostsNotifierProvider call(Account account) {
    return MyGalleryPostsNotifierProvider(account);
  }

  @override
  MyGalleryPostsNotifierProvider getProviderOverride(
    covariant MyGalleryPostsNotifierProvider provider,
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
  String? get name => r'myGalleryPostsNotifierProvider';
}

/// See also [MyGalleryPostsNotifier].
class MyGalleryPostsNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          MyGalleryPostsNotifier,
          PaginationState<GalleryPost>
        > {
  /// See also [MyGalleryPostsNotifier].
  MyGalleryPostsNotifierProvider(Account account)
    : this._internal(
        () => MyGalleryPostsNotifier()..account = account,
        from: myGalleryPostsNotifierProvider,
        name: r'myGalleryPostsNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$myGalleryPostsNotifierHash,
        dependencies: MyGalleryPostsNotifierFamily._dependencies,
        allTransitiveDependencies:
            MyGalleryPostsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  MyGalleryPostsNotifierProvider._internal(
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
    covariant MyGalleryPostsNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(MyGalleryPostsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyGalleryPostsNotifierProvider._internal(
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
    MyGalleryPostsNotifier,
    PaginationState<GalleryPost>
  >
  createElement() {
    return _MyGalleryPostsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyGalleryPostsNotifierProvider && other.account == account;
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
mixin MyGalleryPostsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<GalleryPost>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MyGalleryPostsNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          MyGalleryPostsNotifier,
          PaginationState<GalleryPost>
        >
    with MyGalleryPostsNotifierRef {
  _MyGalleryPostsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as MyGalleryPostsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
