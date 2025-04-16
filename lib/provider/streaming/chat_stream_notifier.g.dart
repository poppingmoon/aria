// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_stream_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatStreamNotifierHash() =>
    r'a1b1214abde950ca1a28861c7bc01faa4af4fd45';

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

abstract class _$ChatStreamNotifier
    extends BuildlessAutoDisposeStreamNotifier<ChatEvent> {
  late final Account account;
  late final String? userId;
  late final String? roomId;

  Stream<ChatEvent> build(Account account, {String? userId, String? roomId});
}

/// See also [ChatStreamNotifier].
@ProviderFor(ChatStreamNotifier)
const chatStreamNotifierProvider = ChatStreamNotifierFamily();

/// See also [ChatStreamNotifier].
class ChatStreamNotifierFamily extends Family<AsyncValue<ChatEvent>> {
  /// See also [ChatStreamNotifier].
  const ChatStreamNotifierFamily();

  /// See also [ChatStreamNotifier].
  ChatStreamNotifierProvider call(
    Account account, {
    String? userId,
    String? roomId,
  }) {
    return ChatStreamNotifierProvider(account, userId: userId, roomId: roomId);
  }

  @override
  ChatStreamNotifierProvider getProviderOverride(
    covariant ChatStreamNotifierProvider provider,
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
  String? get name => r'chatStreamNotifierProvider';
}

/// See also [ChatStreamNotifier].
class ChatStreamNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<ChatStreamNotifier, ChatEvent> {
  /// See also [ChatStreamNotifier].
  ChatStreamNotifierProvider(Account account, {String? userId, String? roomId})
    : this._internal(
        () =>
            ChatStreamNotifier()
              ..account = account
              ..userId = userId
              ..roomId = roomId,
        from: chatStreamNotifierProvider,
        name: r'chatStreamNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$chatStreamNotifierHash,
        dependencies: ChatStreamNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChatStreamNotifierFamily._allTransitiveDependencies,
        account: account,
        userId: userId,
        roomId: roomId,
      );

  ChatStreamNotifierProvider._internal(
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
  Stream<ChatEvent> runNotifierBuild(covariant ChatStreamNotifier notifier) {
    return notifier.build(account, userId: userId, roomId: roomId);
  }

  @override
  Override overrideWith(ChatStreamNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatStreamNotifierProvider._internal(
        () =>
            create()
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
  AutoDisposeStreamNotifierProviderElement<ChatStreamNotifier, ChatEvent>
  createElement() {
    return _ChatStreamNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatStreamNotifierProvider &&
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
mixin ChatStreamNotifierRef on AutoDisposeStreamNotifierProviderRef<ChatEvent> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String? get userId;

  /// The parameter `roomId` of this provider.
  String? get roomId;
}

class _ChatStreamNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<ChatStreamNotifier, ChatEvent>
    with ChatStreamNotifierRef {
  _ChatStreamNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChatStreamNotifierProvider).account;
  @override
  String? get userId => (origin as ChatStreamNotifierProvider).userId;
  @override
  String? get roomId => (origin as ChatStreamNotifierProvider).roomId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
