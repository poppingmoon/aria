// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatMessageHash() => r'0885033843a9fd874b39669bd1e8a0f033e75aaa';

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

/// See also [chatMessage].
@ProviderFor(chatMessage)
const chatMessageProvider = ChatMessageFamily();

/// See also [chatMessage].
class ChatMessageFamily extends Family<AsyncValue<ChatMessage>> {
  /// See also [chatMessage].
  const ChatMessageFamily();

  /// See also [chatMessage].
  ChatMessageProvider call(Account account, String messageId) {
    return ChatMessageProvider(account, messageId);
  }

  @override
  ChatMessageProvider getProviderOverride(
    covariant ChatMessageProvider provider,
  ) {
    return call(provider.account, provider.messageId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatMessageProvider';
}

/// See also [chatMessage].
class ChatMessageProvider extends AutoDisposeFutureProvider<ChatMessage> {
  /// See also [chatMessage].
  ChatMessageProvider(Account account, String messageId)
    : this._internal(
        (ref) => chatMessage(ref as ChatMessageRef, account, messageId),
        from: chatMessageProvider,
        name: r'chatMessageProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$chatMessageHash,
        dependencies: ChatMessageFamily._dependencies,
        allTransitiveDependencies: ChatMessageFamily._allTransitiveDependencies,
        account: account,
        messageId: messageId,
      );

  ChatMessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.messageId,
  }) : super.internal();

  final Account account;
  final String messageId;

  @override
  Override overrideWith(
    FutureOr<ChatMessage> Function(ChatMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChatMessageProvider._internal(
        (ref) => create(ref as ChatMessageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        messageId: messageId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ChatMessage> createElement() {
    return _ChatMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatMessageProvider &&
        other.account == account &&
        other.messageId == messageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, messageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatMessageRef on AutoDisposeFutureProviderRef<ChatMessage> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `messageId` of this provider.
  String get messageId;
}

class _ChatMessageProviderElement
    extends AutoDisposeFutureProviderElement<ChatMessage>
    with ChatMessageRef {
  _ChatMessageProviderElement(super.provider);

  @override
  Account get account => (origin as ChatMessageProvider).account;
  @override
  String get messageId => (origin as ChatMessageProvider).messageId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
