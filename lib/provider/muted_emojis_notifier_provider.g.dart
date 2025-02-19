// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muted_emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mutedEmojisNotifierHash() =>
    r'c921f6a34042e74faef53fb85cfe083ae70c74b3';

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

abstract class _$MutedEmojisNotifier extends BuildlessNotifier<Set<String>> {
  late final Account account;

  Set<String> build(Account account);
}

/// See also [MutedEmojisNotifier].
@ProviderFor(MutedEmojisNotifier)
const mutedEmojisNotifierProvider = MutedEmojisNotifierFamily();

/// See also [MutedEmojisNotifier].
class MutedEmojisNotifierFamily extends Family<Set<String>> {
  /// See also [MutedEmojisNotifier].
  const MutedEmojisNotifierFamily();

  /// See also [MutedEmojisNotifier].
  MutedEmojisNotifierProvider call(Account account) {
    return MutedEmojisNotifierProvider(account);
  }

  @override
  MutedEmojisNotifierProvider getProviderOverride(
    covariant MutedEmojisNotifierProvider provider,
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
  String? get name => r'mutedEmojisNotifierProvider';
}

/// See also [MutedEmojisNotifier].
class MutedEmojisNotifierProvider
    extends NotifierProviderImpl<MutedEmojisNotifier, Set<String>> {
  /// See also [MutedEmojisNotifier].
  MutedEmojisNotifierProvider(Account account)
    : this._internal(
        () => MutedEmojisNotifier()..account = account,
        from: mutedEmojisNotifierProvider,
        name: r'mutedEmojisNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$mutedEmojisNotifierHash,
        dependencies: MutedEmojisNotifierFamily._dependencies,
        allTransitiveDependencies:
            MutedEmojisNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  MutedEmojisNotifierProvider._internal(
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
  Set<String> runNotifierBuild(covariant MutedEmojisNotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(MutedEmojisNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MutedEmojisNotifierProvider._internal(
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
  NotifierProviderElement<MutedEmojisNotifier, Set<String>> createElement() {
    return _MutedEmojisNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MutedEmojisNotifierProvider && other.account == account;
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
mixin MutedEmojisNotifierRef on NotifierProviderRef<Set<String>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MutedEmojisNotifierProviderElement
    extends NotifierProviderElement<MutedEmojisNotifier, Set<String>>
    with MutedEmojisNotifierRef {
  _MutedEmojisNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as MutedEmojisNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
