// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$idNotifierHash() => r'59836ed737b6ca6901c6bd851d439cec02eadc19';

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

abstract class _$IdNotifier extends BuildlessNotifier<IdGenMethod> {
  late final Account account;

  IdGenMethod build(
    Account account,
  );
}

/// See also [IdNotifier].
@ProviderFor(IdNotifier)
const idNotifierProvider = IdNotifierFamily();

/// See also [IdNotifier].
class IdNotifierFamily extends Family<IdGenMethod> {
  /// See also [IdNotifier].
  const IdNotifierFamily();

  /// See also [IdNotifier].
  IdNotifierProvider call(
    Account account,
  ) {
    return IdNotifierProvider(
      account,
    );
  }

  @override
  IdNotifierProvider getProviderOverride(
    covariant IdNotifierProvider provider,
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
  String? get name => r'idNotifierProvider';
}

/// See also [IdNotifier].
class IdNotifierProvider extends NotifierProviderImpl<IdNotifier, IdGenMethod> {
  /// See also [IdNotifier].
  IdNotifierProvider(
    Account account,
  ) : this._internal(
          () => IdNotifier()..account = account,
          from: idNotifierProvider,
          name: r'idNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$idNotifierHash,
          dependencies: IdNotifierFamily._dependencies,
          allTransitiveDependencies:
              IdNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  IdNotifierProvider._internal(
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
  IdGenMethod runNotifierBuild(
    covariant IdNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(IdNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: IdNotifierProvider._internal(
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
  NotifierProviderElement<IdNotifier, IdGenMethod> createElement() {
    return _IdNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IdNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IdNotifierRef on NotifierProviderRef<IdGenMethod> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _IdNotifierProviderElement
    extends NotifierProviderElement<IdNotifier, IdGenMethod>
    with IdNotifierRef {
  _IdNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as IdNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
