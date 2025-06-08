// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_members_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatRoomMembersNotifierHash() =>
    r'c8d62c85da514869b023608bd77c5c4f1480e487';

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

abstract class _$ChatRoomMembersNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<ChatJoining>> {
  late final Account account;
  late final String roomId;

  Stream<PaginationState<ChatJoining>> build(Account account, String roomId);
}

/// See also [ChatRoomMembersNotifier].
@ProviderFor(ChatRoomMembersNotifier)
const chatRoomMembersNotifierProvider = ChatRoomMembersNotifierFamily();

/// See also [ChatRoomMembersNotifier].
class ChatRoomMembersNotifierFamily
    extends Family<AsyncValue<PaginationState<ChatJoining>>> {
  /// See also [ChatRoomMembersNotifier].
  const ChatRoomMembersNotifierFamily();

  /// See also [ChatRoomMembersNotifier].
  ChatRoomMembersNotifierProvider call(Account account, String roomId) {
    return ChatRoomMembersNotifierProvider(account, roomId);
  }

  @override
  ChatRoomMembersNotifierProvider getProviderOverride(
    covariant ChatRoomMembersNotifierProvider provider,
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
  String? get name => r'chatRoomMembersNotifierProvider';
}

/// See also [ChatRoomMembersNotifier].
class ChatRoomMembersNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          ChatRoomMembersNotifier,
          PaginationState<ChatJoining>
        > {
  /// See also [ChatRoomMembersNotifier].
  ChatRoomMembersNotifierProvider(Account account, String roomId)
    : this._internal(
        () => ChatRoomMembersNotifier()
          ..account = account
          ..roomId = roomId,
        from: chatRoomMembersNotifierProvider,
        name: r'chatRoomMembersNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$chatRoomMembersNotifierHash,
        dependencies: ChatRoomMembersNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChatRoomMembersNotifierFamily._allTransitiveDependencies,
        account: account,
        roomId: roomId,
      );

  ChatRoomMembersNotifierProvider._internal(
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
    covariant ChatRoomMembersNotifier notifier,
  ) {
    return notifier.build(account, roomId);
  }

  @override
  Override overrideWith(ChatRoomMembersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatRoomMembersNotifierProvider._internal(
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
    ChatRoomMembersNotifier,
    PaginationState<ChatJoining>
  >
  createElement() {
    return _ChatRoomMembersNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatRoomMembersNotifierProvider &&
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
mixin ChatRoomMembersNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<ChatJoining>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `roomId` of this provider.
  String get roomId;
}

class _ChatRoomMembersNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          ChatRoomMembersNotifier,
          PaginationState<ChatJoining>
        >
    with ChatRoomMembersNotifierRef {
  _ChatRoomMembersNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChatRoomMembersNotifierProvider).account;
  @override
  String get roomId => (origin as ChatRoomMembersNotifierProvider).roomId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
