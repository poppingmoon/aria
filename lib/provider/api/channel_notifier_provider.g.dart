// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$channelNotifierHash() => r'96f2107795c2f48758681bdfd393dc5188a63455';

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

abstract class _$ChannelNotifier
    extends BuildlessAutoDisposeAsyncNotifier<CommunityChannel> {
  late final Account account;
  late final String channelId;

  FutureOr<CommunityChannel> build(Account account, String channelId);
}

/// See also [ChannelNotifier].
@ProviderFor(ChannelNotifier)
const channelNotifierProvider = ChannelNotifierFamily();

/// See also [ChannelNotifier].
class ChannelNotifierFamily extends Family<AsyncValue<CommunityChannel>> {
  /// See also [ChannelNotifier].
  const ChannelNotifierFamily();

  /// See also [ChannelNotifier].
  ChannelNotifierProvider call(Account account, String channelId) {
    return ChannelNotifierProvider(account, channelId);
  }

  @override
  ChannelNotifierProvider getProviderOverride(
    covariant ChannelNotifierProvider provider,
  ) {
    return call(provider.account, provider.channelId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'channelNotifierProvider';
}

/// See also [ChannelNotifier].
class ChannelNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ChannelNotifier,
          CommunityChannel
        > {
  /// See also [ChannelNotifier].
  ChannelNotifierProvider(Account account, String channelId)
    : this._internal(
        () => ChannelNotifier()
          ..account = account
          ..channelId = channelId,
        from: channelNotifierProvider,
        name: r'channelNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$channelNotifierHash,
        dependencies: ChannelNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChannelNotifierFamily._allTransitiveDependencies,
        account: account,
        channelId: channelId,
      );

  ChannelNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.channelId,
  }) : super.internal();

  final Account account;
  final String channelId;

  @override
  FutureOr<CommunityChannel> runNotifierBuild(
    covariant ChannelNotifier notifier,
  ) {
    return notifier.build(account, channelId);
  }

  @override
  Override overrideWith(ChannelNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChannelNotifierProvider._internal(
        () => create()
          ..account = account
          ..channelId = channelId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        channelId: channelId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ChannelNotifier, CommunityChannel>
  createElement() {
    return _ChannelNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChannelNotifierProvider &&
        other.account == account &&
        other.channelId == channelId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, channelId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChannelNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<CommunityChannel> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `channelId` of this provider.
  String get channelId;
}

class _ChannelNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ChannelNotifier,
          CommunityChannel
        >
    with ChannelNotifierRef {
  _ChannelNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChannelNotifierProvider).account;
  @override
  String get channelId => (origin as ChannelNotifierProvider).channelId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
