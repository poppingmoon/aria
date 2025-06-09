// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_invitations_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatInvitationsNotifierHash() =>
    r'80619bda877ceb2ba187fdf580d00d557589bc15';

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

abstract class _$ChatInvitationsNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<ChatJoining>> {
  late final Account account;

  Stream<PaginationState<ChatJoining>> build(Account account);
}

/// See also [ChatInvitationsNotifier].
@ProviderFor(ChatInvitationsNotifier)
const chatInvitationsNotifierProvider = ChatInvitationsNotifierFamily();

/// See also [ChatInvitationsNotifier].
class ChatInvitationsNotifierFamily
    extends Family<AsyncValue<PaginationState<ChatJoining>>> {
  /// See also [ChatInvitationsNotifier].
  const ChatInvitationsNotifierFamily();

  /// See also [ChatInvitationsNotifier].
  ChatInvitationsNotifierProvider call(Account account) {
    return ChatInvitationsNotifierProvider(account);
  }

  @override
  ChatInvitationsNotifierProvider getProviderOverride(
    covariant ChatInvitationsNotifierProvider provider,
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
  String? get name => r'chatInvitationsNotifierProvider';
}

/// See also [ChatInvitationsNotifier].
class ChatInvitationsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          ChatInvitationsNotifier,
          PaginationState<ChatJoining>
        > {
  /// See also [ChatInvitationsNotifier].
  ChatInvitationsNotifierProvider(Account account)
    : this._internal(
        () => ChatInvitationsNotifier()..account = account,
        from: chatInvitationsNotifierProvider,
        name: r'chatInvitationsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$chatInvitationsNotifierHash,
        dependencies: ChatInvitationsNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChatInvitationsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  ChatInvitationsNotifierProvider._internal(
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
    covariant ChatInvitationsNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(ChatInvitationsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatInvitationsNotifierProvider._internal(
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
    ChatInvitationsNotifier,
    PaginationState<ChatJoining>
  >
  createElement() {
    return _ChatInvitationsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatInvitationsNotifierProvider && other.account == account;
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
mixin ChatInvitationsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<ChatJoining>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _ChatInvitationsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          ChatInvitationsNotifier,
          PaginationState<ChatJoining>
        >
    with ChatInvitationsNotifierRef {
  _ChatInvitationsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChatInvitationsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
