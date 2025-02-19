// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$misskeyHash() => r'6ad58d2d21a8be2bea35a0ffbc4543a17f2876c1';

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

/// See also [misskey].
@ProviderFor(misskey)
const misskeyProvider = MisskeyFamily();

/// See also [misskey].
class MisskeyFamily extends Family<Misskey> {
  /// See also [misskey].
  const MisskeyFamily();

  /// See also [misskey].
  MisskeyProvider call(Account account) {
    return MisskeyProvider(account);
  }

  @override
  MisskeyProvider getProviderOverride(covariant MisskeyProvider provider) {
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
  String? get name => r'misskeyProvider';
}

/// See also [misskey].
class MisskeyProvider extends Provider<Misskey> {
  /// See also [misskey].
  MisskeyProvider(Account account)
    : this._internal(
        (ref) => misskey(ref as MisskeyRef, account),
        from: misskeyProvider,
        name: r'misskeyProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$misskeyHash,
        dependencies: MisskeyFamily._dependencies,
        allTransitiveDependencies: MisskeyFamily._allTransitiveDependencies,
        account: account,
      );

  MisskeyProvider._internal(
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
  Override overrideWith(Misskey Function(MisskeyRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: MisskeyProvider._internal(
        (ref) => create(ref as MisskeyRef),
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
  ProviderElement<Misskey> createElement() {
    return _MisskeyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeyProvider && other.account == account;
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
mixin MisskeyRef on ProviderRef<Misskey> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MisskeyProviderElement extends ProviderElement<Misskey> with MisskeyRef {
  _MisskeyProviderElement(super.provider);

  @override
  Account get account => (origin as MisskeyProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
