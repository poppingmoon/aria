// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiscript_storage_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$aiscriptStorageNotifierHash() =>
    r'fe5c6e65b53e3e44dd2f6c63ebab0f98e05cb048';

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

abstract class _$AiscriptStorageNotifier
    extends BuildlessAutoDisposeNotifier<Map<String, String>> {
  late final Account account;

  Map<String, String> build(
    Account account,
  );
}

/// See also [AiscriptStorageNotifier].
@ProviderFor(AiscriptStorageNotifier)
const aiscriptStorageNotifierProvider = AiscriptStorageNotifierFamily();

/// See also [AiscriptStorageNotifier].
class AiscriptStorageNotifierFamily extends Family<Map<String, String>> {
  /// See also [AiscriptStorageNotifier].
  const AiscriptStorageNotifierFamily();

  /// See also [AiscriptStorageNotifier].
  AiscriptStorageNotifierProvider call(
    Account account,
  ) {
    return AiscriptStorageNotifierProvider(
      account,
    );
  }

  @override
  AiscriptStorageNotifierProvider getProviderOverride(
    covariant AiscriptStorageNotifierProvider provider,
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
  String? get name => r'aiscriptStorageNotifierProvider';
}

/// See also [AiscriptStorageNotifier].
class AiscriptStorageNotifierProvider extends AutoDisposeNotifierProviderImpl<
    AiscriptStorageNotifier, Map<String, String>> {
  /// See also [AiscriptStorageNotifier].
  AiscriptStorageNotifierProvider(
    Account account,
  ) : this._internal(
          () => AiscriptStorageNotifier()..account = account,
          from: aiscriptStorageNotifierProvider,
          name: r'aiscriptStorageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$aiscriptStorageNotifierHash,
          dependencies: AiscriptStorageNotifierFamily._dependencies,
          allTransitiveDependencies:
              AiscriptStorageNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  AiscriptStorageNotifierProvider._internal(
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
  Map<String, String> runNotifierBuild(
    covariant AiscriptStorageNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(AiscriptStorageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AiscriptStorageNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<AiscriptStorageNotifier,
      Map<String, String>> createElement() {
    return _AiscriptStorageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AiscriptStorageNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AiscriptStorageNotifierRef
    on AutoDisposeNotifierProviderRef<Map<String, String>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _AiscriptStorageNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<AiscriptStorageNotifier,
        Map<String, String>> with AiscriptStorageNotifierRef {
  _AiscriptStorageNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as AiscriptStorageNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
