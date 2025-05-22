// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_subscription_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteSubscriptionNotifierHash() =>
    r'd16216637a218914ecd35664cca30a24c3d544ac';

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

abstract class _$NoteSubscriptionNotifier
    extends BuildlessNotifier<Map<String, int>> {
  late final Account account;

  Map<String, int> build(Account account);
}

/// See also [NoteSubscriptionNotifier].
@ProviderFor(NoteSubscriptionNotifier)
const noteSubscriptionNotifierProvider = NoteSubscriptionNotifierFamily();

/// See also [NoteSubscriptionNotifier].
class NoteSubscriptionNotifierFamily extends Family<Map<String, int>> {
  /// See also [NoteSubscriptionNotifier].
  const NoteSubscriptionNotifierFamily();

  /// See also [NoteSubscriptionNotifier].
  NoteSubscriptionNotifierProvider call(Account account) {
    return NoteSubscriptionNotifierProvider(account);
  }

  @override
  NoteSubscriptionNotifierProvider getProviderOverride(
    covariant NoteSubscriptionNotifierProvider provider,
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
  String? get name => r'noteSubscriptionNotifierProvider';
}

/// See also [NoteSubscriptionNotifier].
class NoteSubscriptionNotifierProvider
    extends NotifierProviderImpl<NoteSubscriptionNotifier, Map<String, int>> {
  /// See also [NoteSubscriptionNotifier].
  NoteSubscriptionNotifierProvider(Account account)
    : this._internal(
        () => NoteSubscriptionNotifier()..account = account,
        from: noteSubscriptionNotifierProvider,
        name: r'noteSubscriptionNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$noteSubscriptionNotifierHash,
        dependencies: NoteSubscriptionNotifierFamily._dependencies,
        allTransitiveDependencies:
            NoteSubscriptionNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  NoteSubscriptionNotifierProvider._internal(
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
  Map<String, int> runNotifierBuild(
    covariant NoteSubscriptionNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(NoteSubscriptionNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: NoteSubscriptionNotifierProvider._internal(
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
  NotifierProviderElement<NoteSubscriptionNotifier, Map<String, int>>
  createElement() {
    return _NoteSubscriptionNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteSubscriptionNotifierProvider &&
        other.account == account;
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
mixin NoteSubscriptionNotifierRef on NotifierProviderRef<Map<String, int>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _NoteSubscriptionNotifierProviderElement
    extends NotifierProviderElement<NoteSubscriptionNotifier, Map<String, int>>
    with NoteSubscriptionNotifierRef {
  _NoteSubscriptionNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as NoteSubscriptionNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
