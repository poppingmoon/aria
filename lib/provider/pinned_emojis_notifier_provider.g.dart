// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinned_emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pinnedEmojisNotifierHash() =>
    r'23a174ac8e1421ed1ae4511e437853546bc1f3f5';

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

abstract class _$PinnedEmojisNotifier extends BuildlessNotifier<List<String>> {
  late final Account account;
  late final bool reaction;

  List<String> build(Account account, {bool reaction = false});
}

/// See also [PinnedEmojisNotifier].
@ProviderFor(PinnedEmojisNotifier)
const pinnedEmojisNotifierProvider = PinnedEmojisNotifierFamily();

/// See also [PinnedEmojisNotifier].
class PinnedEmojisNotifierFamily extends Family<List<String>> {
  /// See also [PinnedEmojisNotifier].
  const PinnedEmojisNotifierFamily();

  /// See also [PinnedEmojisNotifier].
  PinnedEmojisNotifierProvider call(Account account, {bool reaction = false}) {
    return PinnedEmojisNotifierProvider(account, reaction: reaction);
  }

  @override
  PinnedEmojisNotifierProvider getProviderOverride(
    covariant PinnedEmojisNotifierProvider provider,
  ) {
    return call(provider.account, reaction: provider.reaction);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pinnedEmojisNotifierProvider';
}

/// See also [PinnedEmojisNotifier].
class PinnedEmojisNotifierProvider
    extends NotifierProviderImpl<PinnedEmojisNotifier, List<String>> {
  /// See also [PinnedEmojisNotifier].
  PinnedEmojisNotifierProvider(Account account, {bool reaction = false})
    : this._internal(
        () => PinnedEmojisNotifier()
          ..account = account
          ..reaction = reaction,
        from: pinnedEmojisNotifierProvider,
        name: r'pinnedEmojisNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$pinnedEmojisNotifierHash,
        dependencies: PinnedEmojisNotifierFamily._dependencies,
        allTransitiveDependencies:
            PinnedEmojisNotifierFamily._allTransitiveDependencies,
        account: account,
        reaction: reaction,
      );

  PinnedEmojisNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.reaction,
  }) : super.internal();

  final Account account;
  final bool reaction;

  @override
  List<String> runNotifierBuild(covariant PinnedEmojisNotifier notifier) {
    return notifier.build(account, reaction: reaction);
  }

  @override
  Override overrideWith(PinnedEmojisNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PinnedEmojisNotifierProvider._internal(
        () => create()
          ..account = account
          ..reaction = reaction,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        reaction: reaction,
      ),
    );
  }

  @override
  NotifierProviderElement<PinnedEmojisNotifier, List<String>> createElement() {
    return _PinnedEmojisNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PinnedEmojisNotifierProvider &&
        other.account == account &&
        other.reaction == reaction;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, reaction.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PinnedEmojisNotifierRef on NotifierProviderRef<List<String>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `reaction` of this provider.
  bool get reaction;
}

class _PinnedEmojisNotifierProviderElement
    extends NotifierProviderElement<PinnedEmojisNotifier, List<String>>
    with PinnedEmojisNotifierRef {
  _PinnedEmojisNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as PinnedEmojisNotifierProvider).account;
  @override
  bool get reaction => (origin as PinnedEmojisNotifierProvider).reaction;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
