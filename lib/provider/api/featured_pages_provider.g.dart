// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_pages_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$featuredPagesHash() => r'4e58a17a7c2c8658e462fc9ba79a70186fd69f5a';

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

/// See also [featuredPages].
@ProviderFor(featuredPages)
const featuredPagesProvider = FeaturedPagesFamily();

/// See also [featuredPages].
class FeaturedPagesFamily extends Family<AsyncValue<List<Page>>> {
  /// See also [featuredPages].
  const FeaturedPagesFamily();

  /// See also [featuredPages].
  FeaturedPagesProvider call(Account account) {
    return FeaturedPagesProvider(account);
  }

  @override
  FeaturedPagesProvider getProviderOverride(
    covariant FeaturedPagesProvider provider,
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
  String? get name => r'featuredPagesProvider';
}

/// See also [featuredPages].
class FeaturedPagesProvider extends AutoDisposeFutureProvider<List<Page>> {
  /// See also [featuredPages].
  FeaturedPagesProvider(Account account)
    : this._internal(
        (ref) => featuredPages(ref as FeaturedPagesRef, account),
        from: featuredPagesProvider,
        name: r'featuredPagesProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$featuredPagesHash,
        dependencies: FeaturedPagesFamily._dependencies,
        allTransitiveDependencies:
            FeaturedPagesFamily._allTransitiveDependencies,
        account: account,
      );

  FeaturedPagesProvider._internal(
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
    FutureOr<List<Page>> Function(FeaturedPagesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FeaturedPagesProvider._internal(
        (ref) => create(ref as FeaturedPagesRef),
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
  AutoDisposeFutureProviderElement<List<Page>> createElement() {
    return _FeaturedPagesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedPagesProvider && other.account == account;
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
mixin FeaturedPagesRef on AutoDisposeFutureProviderRef<List<Page>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FeaturedPagesProviderElement
    extends AutoDisposeFutureProviderElement<List<Page>>
    with FeaturedPagesRef {
  _FeaturedPagesProviderElement(super.provider);

  @override
  Account get account => (origin as FeaturedPagesProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
