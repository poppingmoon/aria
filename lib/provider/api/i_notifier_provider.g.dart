// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$iNotifierHash() => r'74ec2b572b9180a14a427f77c27bac99579f64d3';

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

abstract class _$INotifier
    extends BuildlessAutoDisposeStreamNotifier<MeDetailed?> {
  late final Account account;

  Stream<MeDetailed?> build(Account account);
}

/// See also [INotifier].
@ProviderFor(INotifier)
const iNotifierProvider = INotifierFamily();

/// See also [INotifier].
class INotifierFamily extends Family<AsyncValue<MeDetailed?>> {
  /// See also [INotifier].
  const INotifierFamily();

  /// See also [INotifier].
  INotifierProvider call(Account account) {
    return INotifierProvider(account);
  }

  @override
  INotifierProvider getProviderOverride(covariant INotifierProvider provider) {
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
  String? get name => r'iNotifierProvider';
}

/// See also [INotifier].
class INotifierProvider
    extends AutoDisposeStreamNotifierProviderImpl<INotifier, MeDetailed?> {
  /// See also [INotifier].
  INotifierProvider(Account account)
    : this._internal(
        () => INotifier()..account = account,
        from: iNotifierProvider,
        name: r'iNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$iNotifierHash,
        dependencies: INotifierFamily._dependencies,
        allTransitiveDependencies: INotifierFamily._allTransitiveDependencies,
        account: account,
      );

  INotifierProvider._internal(
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
  Stream<MeDetailed?> runNotifierBuild(covariant INotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(INotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: INotifierProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<INotifier, MeDetailed?>
  createElement() {
    return _INotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is INotifierProvider && other.account == account;
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
mixin INotifierRef on AutoDisposeStreamNotifierProviderRef<MeDetailed?> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _INotifierProviderElement
    extends AutoDisposeStreamNotifierProviderElement<INotifier, MeDetailed?>
    with INotifierRef {
  _INotifierProviderElement(super.provider);

  @override
  Account get account => (origin as INotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
