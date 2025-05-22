// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_clips_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favoriteClipsNotifierHash() =>
    r'5173544d0d712afe6ae8802dc167310a61160f8f';

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

abstract class _$FavoriteClipsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Clip>> {
  late final Account account;

  FutureOr<List<Clip>> build(Account account);
}

/// See also [FavoriteClipsNotifier].
@ProviderFor(FavoriteClipsNotifier)
const favoriteClipsNotifierProvider = FavoriteClipsNotifierFamily();

/// See also [FavoriteClipsNotifier].
class FavoriteClipsNotifierFamily extends Family<AsyncValue<List<Clip>>> {
  /// See also [FavoriteClipsNotifier].
  const FavoriteClipsNotifierFamily();

  /// See also [FavoriteClipsNotifier].
  FavoriteClipsNotifierProvider call(Account account) {
    return FavoriteClipsNotifierProvider(account);
  }

  @override
  FavoriteClipsNotifierProvider getProviderOverride(
    covariant FavoriteClipsNotifierProvider provider,
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
  String? get name => r'favoriteClipsNotifierProvider';
}

/// See also [FavoriteClipsNotifier].
class FavoriteClipsNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          FavoriteClipsNotifier,
          List<Clip>
        > {
  /// See also [FavoriteClipsNotifier].
  FavoriteClipsNotifierProvider(Account account)
    : this._internal(
        () => FavoriteClipsNotifier()..account = account,
        from: favoriteClipsNotifierProvider,
        name: r'favoriteClipsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$favoriteClipsNotifierHash,
        dependencies: FavoriteClipsNotifierFamily._dependencies,
        allTransitiveDependencies:
            FavoriteClipsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  FavoriteClipsNotifierProvider._internal(
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
  FutureOr<List<Clip>> runNotifierBuild(
    covariant FavoriteClipsNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(FavoriteClipsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FavoriteClipsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<FavoriteClipsNotifier, List<Clip>>
  createElement() {
    return _FavoriteClipsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteClipsNotifierProvider && other.account == account;
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
mixin FavoriteClipsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<Clip>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FavoriteClipsNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          FavoriteClipsNotifier,
          List<Clip>
        >
    with FavoriteClipsNotifierRef {
  _FavoriteClipsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as FavoriteClipsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
