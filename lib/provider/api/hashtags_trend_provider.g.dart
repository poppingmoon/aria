// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashtags_trend_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hashtagsTrendHash() => r'270320c2a2eaf57a245b612d0397d439cdcc3cba';

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

/// See also [hashtagsTrend].
@ProviderFor(hashtagsTrend)
const hashtagsTrendProvider = HashtagsTrendFamily();

/// See also [hashtagsTrend].
class HashtagsTrendFamily
    extends Family<AsyncValue<List<HashtagsTrendResponse>>> {
  /// See also [hashtagsTrend].
  const HashtagsTrendFamily();

  /// See also [hashtagsTrend].
  HashtagsTrendProvider call(Account account) {
    return HashtagsTrendProvider(account);
  }

  @override
  HashtagsTrendProvider getProviderOverride(
    covariant HashtagsTrendProvider provider,
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
  String? get name => r'hashtagsTrendProvider';
}

/// See also [hashtagsTrend].
class HashtagsTrendProvider
    extends AutoDisposeFutureProvider<List<HashtagsTrendResponse>> {
  /// See also [hashtagsTrend].
  HashtagsTrendProvider(Account account)
    : this._internal(
        (ref) => hashtagsTrend(ref as HashtagsTrendRef, account),
        from: hashtagsTrendProvider,
        name: r'hashtagsTrendProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$hashtagsTrendHash,
        dependencies: HashtagsTrendFamily._dependencies,
        allTransitiveDependencies:
            HashtagsTrendFamily._allTransitiveDependencies,
        account: account,
      );

  HashtagsTrendProvider._internal(
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
    FutureOr<List<HashtagsTrendResponse>> Function(HashtagsTrendRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HashtagsTrendProvider._internal(
        (ref) => create(ref as HashtagsTrendRef),
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
  AutoDisposeFutureProviderElement<List<HashtagsTrendResponse>>
  createElement() {
    return _HashtagsTrendProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HashtagsTrendProvider && other.account == account;
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
mixin HashtagsTrendRef
    on AutoDisposeFutureProviderRef<List<HashtagsTrendResponse>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _HashtagsTrendProviderElement
    extends AutoDisposeFutureProviderElement<List<HashtagsTrendResponse>>
    with HashtagsTrendRef {
  _HashtagsTrendProviderElement(super.provider);

  @override
  Account get account => (origin as HashtagsTrendProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
