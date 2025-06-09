// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_memberships_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatMembershipsNotifierHash() =>
    r'91eac011998b70d1f21c880d9a41c9f0d4adc17b';

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

abstract class _$ChatMembershipsNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<ChatJoining>> {
  late final Account account;

  Stream<PaginationState<ChatJoining>> build(Account account);
}

/// See also [ChatMembershipsNotifier].
@ProviderFor(ChatMembershipsNotifier)
const chatMembershipsNotifierProvider = ChatMembershipsNotifierFamily();

/// See also [ChatMembershipsNotifier].
class ChatMembershipsNotifierFamily
    extends Family<AsyncValue<PaginationState<ChatJoining>>> {
  /// See also [ChatMembershipsNotifier].
  const ChatMembershipsNotifierFamily();

  /// See also [ChatMembershipsNotifier].
  ChatMembershipsNotifierProvider call(Account account) {
    return ChatMembershipsNotifierProvider(account);
  }

  @override
  ChatMembershipsNotifierProvider getProviderOverride(
    covariant ChatMembershipsNotifierProvider provider,
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
  String? get name => r'chatMembershipsNotifierProvider';
}

/// See also [ChatMembershipsNotifier].
class ChatMembershipsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          ChatMembershipsNotifier,
          PaginationState<ChatJoining>
        > {
  /// See also [ChatMembershipsNotifier].
  ChatMembershipsNotifierProvider(Account account)
    : this._internal(
        () => ChatMembershipsNotifier()..account = account,
        from: chatMembershipsNotifierProvider,
        name: r'chatMembershipsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$chatMembershipsNotifierHash,
        dependencies: ChatMembershipsNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChatMembershipsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  ChatMembershipsNotifierProvider._internal(
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
  Stream<PaginationState<ChatJoining>> runNotifierBuild(
    covariant ChatMembershipsNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(ChatMembershipsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatMembershipsNotifierProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<
    ChatMembershipsNotifier,
    PaginationState<ChatJoining>
  >
  createElement() {
    return _ChatMembershipsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatMembershipsNotifierProvider && other.account == account;
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
mixin ChatMembershipsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<ChatJoining>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _ChatMembershipsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          ChatMembershipsNotifier,
          PaginationState<ChatJoining>
        >
    with ChatMembershipsNotifierRef {
  _ChatMembershipsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChatMembershipsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
