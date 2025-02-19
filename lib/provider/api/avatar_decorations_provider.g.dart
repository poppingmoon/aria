// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_decorations_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$avatarDecorationsHash() => r'9a76ac50fb4f87d648bbae19499c5fc8566c4884';

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

/// See also [avatarDecorations].
@ProviderFor(avatarDecorations)
const avatarDecorationsProvider = AvatarDecorationsFamily();

/// See also [avatarDecorations].
class AvatarDecorationsFamily
    extends Family<AsyncValue<List<GetAvatarDecorationsResponse>>> {
  /// See also [avatarDecorations].
  const AvatarDecorationsFamily();

  /// See also [avatarDecorations].
  AvatarDecorationsProvider call(Account account) {
    return AvatarDecorationsProvider(account);
  }

  @override
  AvatarDecorationsProvider getProviderOverride(
    covariant AvatarDecorationsProvider provider,
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
  String? get name => r'avatarDecorationsProvider';
}

/// See also [avatarDecorations].
class AvatarDecorationsProvider
    extends AutoDisposeFutureProvider<List<GetAvatarDecorationsResponse>> {
  /// See also [avatarDecorations].
  AvatarDecorationsProvider(Account account)
    : this._internal(
        (ref) => avatarDecorations(ref as AvatarDecorationsRef, account),
        from: avatarDecorationsProvider,
        name: r'avatarDecorationsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$avatarDecorationsHash,
        dependencies: AvatarDecorationsFamily._dependencies,
        allTransitiveDependencies:
            AvatarDecorationsFamily._allTransitiveDependencies,
        account: account,
      );

  AvatarDecorationsProvider._internal(
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
    FutureOr<List<GetAvatarDecorationsResponse>> Function(
      AvatarDecorationsRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AvatarDecorationsProvider._internal(
        (ref) => create(ref as AvatarDecorationsRef),
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
  AutoDisposeFutureProviderElement<List<GetAvatarDecorationsResponse>>
  createElement() {
    return _AvatarDecorationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AvatarDecorationsProvider && other.account == account;
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
mixin AvatarDecorationsRef
    on AutoDisposeFutureProviderRef<List<GetAvatarDecorationsResponse>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _AvatarDecorationsProviderElement
    extends AutoDisposeFutureProviderElement<List<GetAvatarDecorationsResponse>>
    with AvatarDecorationsRef {
  _AvatarDecorationsProviderElement(super.provider);

  @override
  Account get account => (origin as AvatarDecorationsProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
