// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favoritesNotifierHash() => r'63492723b4f1f3d766af6b55e65b2ec7783cc95e';

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

abstract class _$FavoritesNotifier extends BuildlessAutoDisposeAsyncNotifier<
    PaginationState<IFavoritesResponse>> {
  late final Account account;

  FutureOr<PaginationState<IFavoritesResponse>> build(
    Account account,
  );
}

/// See also [FavoritesNotifier].
@ProviderFor(FavoritesNotifier)
const favoritesNotifierProvider = FavoritesNotifierFamily();

/// See also [FavoritesNotifier].
class FavoritesNotifierFamily
    extends Family<AsyncValue<PaginationState<IFavoritesResponse>>> {
  /// See also [FavoritesNotifier].
  const FavoritesNotifierFamily();

  /// See also [FavoritesNotifier].
  FavoritesNotifierProvider call(
    Account account,
  ) {
    return FavoritesNotifierProvider(
      account,
    );
  }

  @override
  FavoritesNotifierProvider getProviderOverride(
    covariant FavoritesNotifierProvider provider,
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
  String? get name => r'favoritesNotifierProvider';
}

/// See also [FavoritesNotifier].
class FavoritesNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    FavoritesNotifier, PaginationState<IFavoritesResponse>> {
  /// See also [FavoritesNotifier].
  FavoritesNotifierProvider(
    Account account,
  ) : this._internal(
          () => FavoritesNotifier()..account = account,
          from: favoritesNotifierProvider,
          name: r'favoritesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$favoritesNotifierHash,
          dependencies: FavoritesNotifierFamily._dependencies,
          allTransitiveDependencies:
              FavoritesNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  FavoritesNotifierProvider._internal(
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
  FutureOr<PaginationState<IFavoritesResponse>> runNotifierBuild(
    covariant FavoritesNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(FavoritesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FavoritesNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<FavoritesNotifier,
      PaginationState<IFavoritesResponse>> createElement() {
    return _FavoritesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FavoritesNotifierProvider && other.account == account;
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
mixin FavoritesNotifierRef on AutoDisposeAsyncNotifierProviderRef<
    PaginationState<IFavoritesResponse>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FavoritesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FavoritesNotifier,
        PaginationState<IFavoritesResponse>> with FavoritesNotifierRef {
  _FavoritesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as FavoritesNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
