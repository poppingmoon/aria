// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skeb_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$skebStatusHash() => r'515cd9b8e3fc815d4ce537ae30b2b6ec93152976';

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

/// See also [skebStatus].
@ProviderFor(skebStatus)
const skebStatusProvider = SkebStatusFamily();

/// See also [skebStatus].
class SkebStatusFamily extends Family<AsyncValue<UsersGetSkebStatusResponse>> {
  /// See also [skebStatus].
  const SkebStatusFamily();

  /// See also [skebStatus].
  SkebStatusProvider call(Account account, String userId) {
    return SkebStatusProvider(account, userId);
  }

  @override
  SkebStatusProvider getProviderOverride(
    covariant SkebStatusProvider provider,
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
  String? get name => r'skebStatusProvider';
}

/// See also [skebStatus].
class SkebStatusProvider
    extends AutoDisposeFutureProvider<UsersGetSkebStatusResponse> {
  /// See also [skebStatus].
  SkebStatusProvider(Account account, String userId)
    : this._internal(
        (ref) => skebStatus(ref as SkebStatusRef, account, userId),
        from: skebStatusProvider,
        name: r'skebStatusProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$skebStatusHash,
        dependencies: SkebStatusFamily._dependencies,
        allTransitiveDependencies: SkebStatusFamily._allTransitiveDependencies,
        account: account,
        userId: userId,
      );

  SkebStatusProvider._internal(
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
  Override overrideWith(
    FutureOr<UsersGetSkebStatusResponse> Function(SkebStatusRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SkebStatusProvider._internal(
        (ref) => create(ref as SkebStatusRef),
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
  AutoDisposeFutureProviderElement<UsersGetSkebStatusResponse> createElement() {
    return _SkebStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SkebStatusProvider &&
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
mixin SkebStatusRef
    on AutoDisposeFutureProviderRef<UsersGetSkebStatusResponse> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _SkebStatusProviderElement
    extends AutoDisposeFutureProviderElement<UsersGetSkebStatusResponse>
    with SkebStatusRef {
  _SkebStatusProviderElement(super.provider);

  @override
  Account get account => (origin as SkebStatusProvider).account;
  @override
  String get userId => (origin as SkebStatusProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
