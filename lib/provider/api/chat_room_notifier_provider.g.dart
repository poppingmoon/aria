// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatRoomNotifierHash() => r'ea51e8ef38f96810c79c63fdbd719a65fe25606b';

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

abstract class _$ChatRoomNotifier
    extends BuildlessAutoDisposeAsyncNotifier<ChatRoom> {
  late final Account account;
  late final String roomId;

  FutureOr<ChatRoom> build(Account account, String roomId);
}

/// See also [ChatRoomNotifier].
@ProviderFor(ChatRoomNotifier)
const chatRoomNotifierProvider = ChatRoomNotifierFamily();

/// See also [ChatRoomNotifier].
class ChatRoomNotifierFamily extends Family<AsyncValue<ChatRoom>> {
  /// See also [ChatRoomNotifier].
  const ChatRoomNotifierFamily();

  /// See also [ChatRoomNotifier].
  ChatRoomNotifierProvider call(Account account, String roomId) {
    return ChatRoomNotifierProvider(account, roomId);
  }

  @override
  ChatRoomNotifierProvider getProviderOverride(
    covariant ChatRoomNotifierProvider provider,
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
  String? get name => r'chatRoomNotifierProvider';
}

/// See also [ChatRoomNotifier].
class ChatRoomNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ChatRoomNotifier, ChatRoom> {
  /// See also [ChatRoomNotifier].
  ChatRoomNotifierProvider(Account account, String roomId)
    : this._internal(
        () =>
            ChatRoomNotifier()
              ..account = account
              ..roomId = roomId,
        from: chatRoomNotifierProvider,
        name: r'chatRoomNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$chatRoomNotifierHash,
        dependencies: ChatRoomNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChatRoomNotifierFamily._allTransitiveDependencies,
        account: account,
        roomId: roomId,
      );

  ChatRoomNotifierProvider._internal(
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
  FutureOr<ChatRoom> runNotifierBuild(covariant ChatRoomNotifier notifier) {
    return notifier.build(account, roomId);
  }

  @override
  Override overrideWith(ChatRoomNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatRoomNotifierProvider._internal(
        () =>
            create()
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
  AutoDisposeAsyncNotifierProviderElement<ChatRoomNotifier, ChatRoom>
  createElement() {
    return _ChatRoomNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatRoomNotifierProvider &&
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
mixin ChatRoomNotifierRef on AutoDisposeAsyncNotifierProviderRef<ChatRoom> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `roomId` of this provider.
  String get roomId;
}

class _ChatRoomNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ChatRoomNotifier, ChatRoom>
    with ChatRoomNotifierRef {
  _ChatRoomNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChatRoomNotifierProvider).account;
  @override
  String get roomId => (origin as ChatRoomNotifierProvider).roomId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
