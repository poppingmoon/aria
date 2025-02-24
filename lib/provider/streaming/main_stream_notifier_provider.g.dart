// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_stream_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mainStreamNotifierHash() =>
    r'42e2c637e332ade3061360b749ce2a989446d703';

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

abstract class _$MainStreamNotifier
    extends BuildlessAutoDisposeStreamNotifier<MainEvent> {
  late final Account account;

  Stream<MainEvent> build(Account account);
}

/// See also [MainStreamNotifier].
@ProviderFor(MainStreamNotifier)
const mainStreamNotifierProvider = MainStreamNotifierFamily();

/// See also [MainStreamNotifier].
class MainStreamNotifierFamily extends Family<AsyncValue<MainEvent>> {
  /// See also [MainStreamNotifier].
  const MainStreamNotifierFamily();

  /// See also [MainStreamNotifier].
  MainStreamNotifierProvider call(Account account) {
    return MainStreamNotifierProvider(account);
  }

  @override
  MainStreamNotifierProvider getProviderOverride(
    covariant MainStreamNotifierProvider provider,
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
  String? get name => r'mainStreamNotifierProvider';
}

/// See also [MainStreamNotifier].
class MainStreamNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<MainStreamNotifier, MainEvent> {
  /// See also [MainStreamNotifier].
  MainStreamNotifierProvider(Account account)
    : this._internal(
        () => MainStreamNotifier()..account = account,
        from: mainStreamNotifierProvider,
        name: r'mainStreamNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$mainStreamNotifierHash,
        dependencies: MainStreamNotifierFamily._dependencies,
        allTransitiveDependencies:
            MainStreamNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  MainStreamNotifierProvider._internal(
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
  Stream<MainEvent> runNotifierBuild(covariant MainStreamNotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(MainStreamNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MainStreamNotifierProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<MainStreamNotifier, MainEvent>
  createElement() {
    return _MainStreamNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MainStreamNotifierProvider && other.account == account;
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
mixin MainStreamNotifierRef on AutoDisposeStreamNotifierProviderRef<MainEvent> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MainStreamNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<MainStreamNotifier, MainEvent>
    with MainStreamNotifierRef {
  _MainStreamNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as MainStreamNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
