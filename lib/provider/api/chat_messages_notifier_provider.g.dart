// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatMessagesNotifierHash() =>
    r'b9f8e5889c20242e90e094967784a8ede647754b';

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

abstract class _$ChatMessagesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<ChatMessage>> {
  late final Account account;
  late final String? userId;
  late final String? roomId;

  FutureOr<PaginationState<ChatMessage>> build(
    Account account, {
    String? userId,
    String? roomId,
  });
}

/// See also [ChatMessagesNotifier].
@ProviderFor(ChatMessagesNotifier)
const chatMessagesNotifierProvider = ChatMessagesNotifierFamily();

/// See also [ChatMessagesNotifier].
class ChatMessagesNotifierFamily
    extends Family<AsyncValue<PaginationState<ChatMessage>>> {
  /// See also [ChatMessagesNotifier].
  const ChatMessagesNotifierFamily();

  /// See also [ChatMessagesNotifier].
  ChatMessagesNotifierProvider call(
    Account account, {
    String? userId,
    String? roomId,
  }) {
    return ChatMessagesNotifierProvider(
      account,
      userId: userId,
      roomId: roomId,
    );
  }

  @override
  ChatMessagesNotifierProvider getProviderOverride(
    covariant ChatMessagesNotifierProvider provider,
  ) {
    return call(
      provider.account,
      userId: provider.userId,
      roomId: provider.roomId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatMessagesNotifierProvider';
}

/// See also [ChatMessagesNotifier].
class ChatMessagesNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ChatMessagesNotifier,
          PaginationState<ChatMessage>
        > {
  /// See also [ChatMessagesNotifier].
  ChatMessagesNotifierProvider(
    Account account, {
    String? userId,
    String? roomId,
  }) : this._internal(
         () => ChatMessagesNotifier()
           ..account = account
           ..userId = userId
           ..roomId = roomId,
         from: chatMessagesNotifierProvider,
         name: r'chatMessagesNotifierProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$chatMessagesNotifierHash,
         dependencies: ChatMessagesNotifierFamily._dependencies,
         allTransitiveDependencies:
             ChatMessagesNotifierFamily._allTransitiveDependencies,
         account: account,
         userId: userId,
         roomId: roomId,
       );

  ChatMessagesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.userId,
    required this.roomId,
  }) : super.internal();

  final Account account;
  final String? userId;
  final String? roomId;

  @override
  FutureOr<PaginationState<ChatMessage>> runNotifierBuild(
    covariant ChatMessagesNotifier notifier,
  ) {
    return notifier.build(account, userId: userId, roomId: roomId);
  }

  @override
  Override overrideWith(ChatMessagesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatMessagesNotifierProvider._internal(
        () => create()
          ..account = account
          ..userId = userId
          ..roomId = roomId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        userId: userId,
        roomId: roomId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ChatMessagesNotifier,
    PaginationState<ChatMessage>
  >
  createElement() {
    return _ChatMessagesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatMessagesNotifierProvider &&
        other.account == account &&
        other.userId == userId &&
        other.roomId == roomId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, roomId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatMessagesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<ChatMessage>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String? get userId;

  /// The parameter `roomId` of this provider.
  String? get roomId;
}

class _ChatMessagesNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ChatMessagesNotifier,
          PaginationState<ChatMessage>
        >
    with ChatMessagesNotifierRef {
  _ChatMessagesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChatMessagesNotifierProvider).account;
  @override
  String? get userId => (origin as ChatMessagesNotifierProvider).userId;
  @override
  String? get roomId => (origin as ChatMessagesNotifierProvider).roomId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
