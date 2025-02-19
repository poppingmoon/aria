// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userGalleryPostsNotifierHash() =>
    r'd80180c705bf9ca8301d5ae7c3c7056de33aa49a';

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

abstract class _$UserGalleryPostsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<GalleryPost>> {
  late final Account account;
  late final String userId;

  FutureOr<PaginationState<GalleryPost>> build(Account account, String userId);
}

/// See also [UserGalleryPostsNotifier].
@ProviderFor(UserGalleryPostsNotifier)
const userGalleryPostsNotifierProvider = UserGalleryPostsNotifierFamily();

/// See also [UserGalleryPostsNotifier].
class UserGalleryPostsNotifierFamily
    extends Family<AsyncValue<PaginationState<GalleryPost>>> {
  /// See also [UserGalleryPostsNotifier].
  const UserGalleryPostsNotifierFamily();

  /// See also [UserGalleryPostsNotifier].
  UserGalleryPostsNotifierProvider call(Account account, String userId) {
    return UserGalleryPostsNotifierProvider(account, userId);
  }

  @override
  UserGalleryPostsNotifierProvider getProviderOverride(
    covariant UserGalleryPostsNotifierProvider provider,
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
  String? get name => r'userGalleryPostsNotifierProvider';
}

/// See also [UserGalleryPostsNotifier].
class UserGalleryPostsNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          UserGalleryPostsNotifier,
          PaginationState<GalleryPost>
        > {
  /// See also [UserGalleryPostsNotifier].
  UserGalleryPostsNotifierProvider(Account account, String userId)
    : this._internal(
        () =>
            UserGalleryPostsNotifier()
              ..account = account
              ..userId = userId,
        from: userGalleryPostsNotifierProvider,
        name: r'userGalleryPostsNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$userGalleryPostsNotifierHash,
        dependencies: UserGalleryPostsNotifierFamily._dependencies,
        allTransitiveDependencies:
            UserGalleryPostsNotifierFamily._allTransitiveDependencies,
        account: account,
        userId: userId,
      );

  UserGalleryPostsNotifierProvider._internal(
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
  FutureOr<PaginationState<GalleryPost>> runNotifierBuild(
    covariant UserGalleryPostsNotifier notifier,
  ) {
    return notifier.build(account, userId);
  }

  @override
  Override overrideWith(UserGalleryPostsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserGalleryPostsNotifierProvider._internal(
        () =>
            create()
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
  AutoDisposeAsyncNotifierProviderElement<
    UserGalleryPostsNotifier,
    PaginationState<GalleryPost>
  >
  createElement() {
    return _UserGalleryPostsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserGalleryPostsNotifierProvider &&
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
mixin UserGalleryPostsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<GalleryPost>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserGalleryPostsNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          UserGalleryPostsNotifier,
          PaginationState<GalleryPost>
        >
    with UserGalleryPostsNotifierRef {
  _UserGalleryPostsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserGalleryPostsNotifierProvider).account;
  @override
  String get userId => (origin as UserGalleryPostsNotifierProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
