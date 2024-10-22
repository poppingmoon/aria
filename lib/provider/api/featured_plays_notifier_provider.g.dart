// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$featuredPlaysNotifierHash() =>
    r'e417e1f3cc27616906ae33aa35c5729332acbd99';

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

abstract class _$FeaturedPlaysNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Flash>> {
  late final Account account;

  FutureOr<PaginationState<Flash>> build(
    Account account,
  );
}

/// See also [FeaturedPlaysNotifier].
@ProviderFor(FeaturedPlaysNotifier)
const featuredPlaysNotifierProvider = FeaturedPlaysNotifierFamily();

/// See also [FeaturedPlaysNotifier].
class FeaturedPlaysNotifierFamily
    extends Family<AsyncValue<PaginationState<Flash>>> {
  /// See also [FeaturedPlaysNotifier].
  const FeaturedPlaysNotifierFamily();

  /// See also [FeaturedPlaysNotifier].
  FeaturedPlaysNotifierProvider call(
    Account account,
  ) {
    return FeaturedPlaysNotifierProvider(
      account,
    );
  }

  @override
  FeaturedPlaysNotifierProvider getProviderOverride(
    covariant FeaturedPlaysNotifierProvider provider,
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
  String? get name => r'featuredPlaysNotifierProvider';
}

/// See also [FeaturedPlaysNotifier].
class FeaturedPlaysNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FeaturedPlaysNotifier,
        PaginationState<Flash>> {
  /// See also [FeaturedPlaysNotifier].
  FeaturedPlaysNotifierProvider(
    Account account,
  ) : this._internal(
          () => FeaturedPlaysNotifier()..account = account,
          from: featuredPlaysNotifierProvider,
          name: r'featuredPlaysNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$featuredPlaysNotifierHash,
          dependencies: FeaturedPlaysNotifierFamily._dependencies,
          allTransitiveDependencies:
              FeaturedPlaysNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  FeaturedPlaysNotifierProvider._internal(
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
  FutureOr<PaginationState<Flash>> runNotifierBuild(
    covariant FeaturedPlaysNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(FeaturedPlaysNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FeaturedPlaysNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<FeaturedPlaysNotifier,
      PaginationState<Flash>> createElement() {
    return _FeaturedPlaysNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedPlaysNotifierProvider && other.account == account;
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
mixin FeaturedPlaysNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Flash>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FeaturedPlaysNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FeaturedPlaysNotifier,
        PaginationState<Flash>> with FeaturedPlaysNotifierRef {
  _FeaturedPlaysNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as FeaturedPlaysNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
