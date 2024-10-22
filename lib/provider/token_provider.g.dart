// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenHash() => r'd0cf5e964101cd703c8341205f649f0793dd2261';

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

/// See also [token].
@ProviderFor(token)
const tokenProvider = TokenFamily();

/// See also [token].
class TokenFamily extends Family<String?> {
  /// See also [token].
  const TokenFamily();

  /// See also [token].
  TokenProvider call(
    Account account,
  ) {
    return TokenProvider(
      account,
    );
  }

  @override
  TokenProvider getProviderOverride(
    covariant TokenProvider provider,
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
  String? get name => r'tokenProvider';
}

/// See also [token].
class TokenProvider extends Provider<String?> {
  /// See also [token].
  TokenProvider(
    Account account,
  ) : this._internal(
          (ref) => token(
            ref as TokenRef,
            account,
          ),
          from: tokenProvider,
          name: r'tokenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tokenHash,
          dependencies: TokenFamily._dependencies,
          allTransitiveDependencies: TokenFamily._allTransitiveDependencies,
          account: account,
        );

  TokenProvider._internal(
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
    String? Function(TokenRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TokenProvider._internal(
        (ref) => create(ref as TokenRef),
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
  ProviderElement<String?> createElement() {
    return _TokenProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TokenProvider && other.account == account;
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
mixin TokenRef on ProviderRef<String?> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _TokenProviderElement extends ProviderElement<String?> with TokenRef {
  _TokenProviderElement(super.provider);

  @override
  Account get account => (origin as TokenProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
