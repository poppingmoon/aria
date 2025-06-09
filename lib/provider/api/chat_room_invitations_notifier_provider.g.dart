// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_invitations_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatRoomInvitationsNotifierHash() =>
    r'78f17eb6b9a9760f0f62542a38b0ae93045e2c69';

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

abstract class _$ChatRoomInvitationsNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<ChatJoining>> {
  late final Account account;
  late final String roomId;

  Stream<PaginationState<ChatJoining>> build(Account account, String roomId);
}

/// See also [ChatRoomInvitationsNotifier].
@ProviderFor(ChatRoomInvitationsNotifier)
const chatRoomInvitationsNotifierProvider = ChatRoomInvitationsNotifierFamily();

/// See also [ChatRoomInvitationsNotifier].
class ChatRoomInvitationsNotifierFamily
    extends Family<AsyncValue<PaginationState<ChatJoining>>> {
  /// See also [ChatRoomInvitationsNotifier].
  const ChatRoomInvitationsNotifierFamily();

  /// See also [ChatRoomInvitationsNotifier].
  ChatRoomInvitationsNotifierProvider call(Account account, String roomId) {
    return ChatRoomInvitationsNotifierProvider(account, roomId);
  }

  @override
  ChatRoomInvitationsNotifierProvider getProviderOverride(
    covariant ChatRoomInvitationsNotifierProvider provider,
  ) {
    return call(provider.account, provider.roomId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatRoomInvitationsNotifierProvider';
}

/// See also [ChatRoomInvitationsNotifier].
class ChatRoomInvitationsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          ChatRoomInvitationsNotifier,
          PaginationState<ChatJoining>
        > {
  /// See also [ChatRoomInvitationsNotifier].
  ChatRoomInvitationsNotifierProvider(Account account, String roomId)
    : this._internal(
        () => ChatRoomInvitationsNotifier()
          ..account = account
          ..roomId = roomId,
        from: chatRoomInvitationsNotifierProvider,
        name: r'chatRoomInvitationsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$chatRoomInvitationsNotifierHash,
        dependencies: ChatRoomInvitationsNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChatRoomInvitationsNotifierFamily._allTransitiveDependencies,
        account: account,
        roomId: roomId,
      );

  ChatRoomInvitationsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.roomId,
  }) : super.internal();

  final Account account;
  final String roomId;

  @override
  Stream<PaginationState<ChatJoining>> runNotifierBuild(
    covariant ChatRoomInvitationsNotifier notifier,
  ) {
    return notifier.build(account, roomId);
  }

  @override
  Override overrideWith(ChatRoomInvitationsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatRoomInvitationsNotifierProvider._internal(
        () => create()
          ..account = account
          ..roomId = roomId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        roomId: roomId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<
    ChatRoomInvitationsNotifier,
    PaginationState<ChatJoining>
  >
  createElement() {
    return _ChatRoomInvitationsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatRoomInvitationsNotifierProvider &&
        other.account == account &&
        other.roomId == roomId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, roomId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatRoomInvitationsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<ChatJoining>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `roomId` of this provider.
  String get roomId;
}

class _ChatRoomInvitationsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          ChatRoomInvitationsNotifier,
          PaginationState<ChatJoining>
        >
    with ChatRoomInvitationsNotifierRef {
  _ChatRoomInvitationsNotifierProviderElement(super.provider);

  @override
  Account get account =>
      (origin as ChatRoomInvitationsNotifierProvider).account;
  @override
  String get roomId => (origin as ChatRoomInvitationsNotifierProvider).roomId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
