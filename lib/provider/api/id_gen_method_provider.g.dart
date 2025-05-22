// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_gen_method_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$idGenMethodHash() => r'4f44a0ae972e787cadd83071e7a8dfc007987f35';

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

/// See also [idGenMethod].
@ProviderFor(idGenMethod)
const idGenMethodProvider = IdGenMethodFamily();

/// See also [idGenMethod].
class IdGenMethodFamily extends Family<AsyncValue<IdGenMethod>> {
  /// See also [idGenMethod].
  const IdGenMethodFamily();

  /// See also [idGenMethod].
  IdGenMethodProvider call(Account account) {
    return IdGenMethodProvider(account);
  }

  @override
  IdGenMethodProvider getProviderOverride(
    covariant IdGenMethodProvider provider,
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
  String? get name => r'idGenMethodProvider';
}

/// See also [idGenMethod].
class IdGenMethodProvider extends AutoDisposeFutureProvider<IdGenMethod> {
  /// See also [idGenMethod].
  IdGenMethodProvider(Account account)
    : this._internal(
        (ref) => idGenMethod(ref as IdGenMethodRef, account),
        from: idGenMethodProvider,
        name: r'idGenMethodProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$idGenMethodHash,
        dependencies: IdGenMethodFamily._dependencies,
        allTransitiveDependencies: IdGenMethodFamily._allTransitiveDependencies,
        account: account,
      );

  IdGenMethodProvider._internal(
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
    FutureOr<IdGenMethod> Function(IdGenMethodRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IdGenMethodProvider._internal(
        (ref) => create(ref as IdGenMethodRef),
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
  AutoDisposeFutureProviderElement<IdGenMethod> createElement() {
    return _IdGenMethodProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IdGenMethodProvider && other.account == account;
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
mixin IdGenMethodRef on AutoDisposeFutureProviderRef<IdGenMethod> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _IdGenMethodProviderElement
    extends AutoDisposeFutureProviderElement<IdGenMethod>
    with IdGenMethodRef {
  _IdGenMethodProviderElement(super.provider);

  @override
  Account get account => (origin as IdGenMethodProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
