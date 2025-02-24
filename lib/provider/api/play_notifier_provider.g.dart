// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$playNotifierHash() => r'ec7ef621e35d61afc2945004a9105aaf588ae1b9';

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

abstract class _$PlayNotifier extends BuildlessAutoDisposeAsyncNotifier<Flash> {
  late final Account account;
  late final String playId;

  FutureOr<Flash> build(Account account, String playId);
}

/// See also [PlayNotifier].
@ProviderFor(PlayNotifier)
const playNotifierProvider = PlayNotifierFamily();

/// See also [PlayNotifier].
class PlayNotifierFamily extends Family<AsyncValue<Flash>> {
  /// See also [PlayNotifier].
  const PlayNotifierFamily();

  /// See also [PlayNotifier].
  PlayNotifierProvider call(Account account, String playId) {
    return PlayNotifierProvider(account, playId);
  }

  @override
  PlayNotifierProvider getProviderOverride(
    covariant PlayNotifierProvider provider,
  ) {
    return call(provider.account, provider.playId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'playNotifierProvider';
}

/// See also [PlayNotifier].
class PlayNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PlayNotifier, Flash> {
  /// See also [PlayNotifier].
  PlayNotifierProvider(Account account, String playId)
    : this._internal(
        () =>
            PlayNotifier()
              ..account = account
              ..playId = playId,
        from: playNotifierProvider,
        name: r'playNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$playNotifierHash,
        dependencies: PlayNotifierFamily._dependencies,
        allTransitiveDependencies:
            PlayNotifierFamily._allTransitiveDependencies,
        account: account,
        playId: playId,
      );

  PlayNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.playId,
  }) : super.internal();

  final Account account;
  final String playId;

  @override
  FutureOr<Flash> runNotifierBuild(covariant PlayNotifier notifier) {
    return notifier.build(account, playId);
  }

  @override
  Override overrideWith(PlayNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlayNotifierProvider._internal(
        () =>
            create()
              ..account = account
              ..playId = playId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        playId: playId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PlayNotifier, Flash> createElement() {
    return _PlayNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlayNotifierProvider &&
        other.account == account &&
        other.playId == playId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, playId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PlayNotifierRef on AutoDisposeAsyncNotifierProviderRef<Flash> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `playId` of this provider.
  String get playId;
}

class _PlayNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PlayNotifier, Flash>
    with PlayNotifierRef {
  _PlayNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as PlayNotifierProvider).account;
  @override
  String get playId => (origin as PlayNotifierProvider).playId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
