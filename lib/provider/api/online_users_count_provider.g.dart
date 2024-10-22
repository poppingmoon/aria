// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_users_count_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onlineUsersCountHash() => r'621dc98d3fce2c4610a488e0b1c47cc53a714d4a';

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

/// See also [onlineUsersCount].
@ProviderFor(onlineUsersCount)
const onlineUsersCountProvider = OnlineUsersCountFamily();

/// See also [onlineUsersCount].
class OnlineUsersCountFamily extends Family<AsyncValue<int>> {
  /// See also [onlineUsersCount].
  const OnlineUsersCountFamily();

  /// See also [onlineUsersCount].
  OnlineUsersCountProvider call(
    Account account,
  ) {
    return OnlineUsersCountProvider(
      account,
    );
  }

  @override
  OnlineUsersCountProvider getProviderOverride(
    covariant OnlineUsersCountProvider provider,
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
  String? get name => r'onlineUsersCountProvider';
}

/// See also [onlineUsersCount].
class OnlineUsersCountProvider extends AutoDisposeFutureProvider<int> {
  /// See also [onlineUsersCount].
  OnlineUsersCountProvider(
    Account account,
  ) : this._internal(
          (ref) => onlineUsersCount(
            ref as OnlineUsersCountRef,
            account,
          ),
          from: onlineUsersCountProvider,
          name: r'onlineUsersCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$onlineUsersCountHash,
          dependencies: OnlineUsersCountFamily._dependencies,
          allTransitiveDependencies:
              OnlineUsersCountFamily._allTransitiveDependencies,
          account: account,
        );

  OnlineUsersCountProvider._internal(
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
    FutureOr<int> Function(OnlineUsersCountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OnlineUsersCountProvider._internal(
        (ref) => create(ref as OnlineUsersCountRef),
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
  AutoDisposeFutureProviderElement<int> createElement() {
    return _OnlineUsersCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OnlineUsersCountProvider && other.account == account;
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
mixin OnlineUsersCountRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _OnlineUsersCountProviderElement
    extends AutoDisposeFutureProviderElement<int> with OnlineUsersCountRef {
  _OnlineUsersCountProviderElement(super.provider);

  @override
  Account get account => (origin as OnlineUsersCountProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
